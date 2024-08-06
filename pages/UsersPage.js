import { BasePage } from "./BasePage.js";

export class UsersPage extends BasePage {
  // ADD YOUR LOCATORS HERE...
  /**
   * @param {import('playwright').Page} page
   */
  constructor(page) {
    super(page);
    this.usersMenu = page.locator("//a[@href='#users' and @class='nav-link']");
    this.editUserBtn = page.locator("(//a[contains(@onclick, 'Users.edit_user') and contains(text(), 'Edit User')])[1]");
    this.saveChangesBtn = page.locator("//button[@type='submit' and contains(@class, 'btn-primary') and text()='Save changes']");
    this.closeBtn = page.locator("//button[@type='cancel' and @class='btn default' and text()='Close']");
    this.userGroupMenu = page.locator("//select[@id='user_groups' and contains(@onchange, 'Users.get_users()')]");
    this.userGLibrarian = page.locator("//option[@value='2' and text()='Librarian']");
    this.userGStudents = page.locator("//option[@value='3' and text()='Students']");
    this.userCreatedMsg = page.locator("//div[@class='toast-message' and text()='The user has been created.']");
    this.addUserForm = page.locator("//form[@id='add_user_form']");
   
  
  }
}
