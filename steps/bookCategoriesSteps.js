import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";

  

When('user clicks Books link', async function () {
    await PageManager.dashboardPage.bookLink.click();
});

When('user clicks the book categories drop down box', async function () {
    await PageManager.booksPage.bookCategoriesDropDown.click();
});

//Then('user should see {int} book categories', async function (int) {
   // const totalOptions = await PageManager.booksPage.bookCategoriesDropDown.locator("option").count();
   // expect(totalOptions).toBe(int);
//});

//Then('book category name {string} should be inlcuded in the categories', async function (string) {
    //const options = await PageManager.booksPage.bookCategoriesDropDown.locator("option").allInnerTexts();
    //expect(options).toContain(string);
  //}); 

  Then('user should see {int} book categories', async function (int) {
    await PageManager.booksPage.bookCategoriesDropDown.waitFor({ state: 'visible' });
    const totalOptions = await PageManager.booksPage.bookCategoriesDropDown.locator("option").count();
    console.log(`Expected ${int} options, found ${totalOptions}`);
    
    // Log the HTML content of the dropdown
    const dropdownHTML = await PageManager.booksPage.bookCategoriesDropDown.innerHTML();
    console.log('Dropdown HTML:', dropdownHTML);
    
    expect(totalOptions).toBe(int);
});

Then('book category name {string} should be inlcuded in the categories', async function (string) {
    await PageManager.booksPage.bookCategoriesDropDown.waitFor({ state: 'visible' });
    const optionsLocator = PageManager.booksPage.bookCategoriesDropDown.locator("option");
    const options = await optionsLocator.allInnerTexts();
    console.log('All categories:', options);

    if (options.length === 0) {
        console.error('No options were found in the dropdown.');
        const dropdownHTML = await PageManager.booksPage.bookCategoriesDropDown.innerHTML();
        console.log('Dropdown HTML:', dropdownHTML);
        
        // Check if the dropdown is really empty or if there's an issue with the locator
        const anyChildElements = await PageManager.booksPage.bookCategoriesDropDown.locator('*').count();
        console.log('Number of child elements in dropdown:', anyChildElements);
        
        // Take a screenshot for further investigation
        await PageManager.booksPage.page.screenshot({ path: 'empty-dropdown-error.png' });
    }
    
    expect(options).toContain(string);
});
    