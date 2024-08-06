import { BasePage } from "./BasePage.js";

export class BooksPage extends BasePage {

  /**
   * @param {import('playwright').Page} page
   */
  constructor(page) {
    super(page);
    this.bookCategoriesDropDown = page.locator("//select[@id='book_categories']");
    this.booksAllOptions = page.locator("//option[@value='null' and @selected='selected']");
    this.editBookMsg = page.locator("//div[@class='toast-message' and text()='The book has been created.']");
    this.returnBookBtn = page.locator("(//a[contains(@onclick, 'BorrowingBooks.return_book') and contains(text(), 'Return Book')])[1]");
    this.returnBookMsg = page.locator("//div[@class='toast-message' and text()='The book has been returned..']");
    this.returnBookBtnDis = page.locator("(//a[contains(@onclick, 'BorrowingBooks.return_book') and contains(@class, 'btn-primary') and contains(@class, 'disabled') and contains(text(), 'Return Book')])[1]");
    this.returnedStatus = page.locator("(//td[text()='RETURNED'])[1]");
    this.notReturnedStatus = page.locator("(//td[normalize-space()='NOT RETURNED'])[1]");
    
   
    
  }

 


}
