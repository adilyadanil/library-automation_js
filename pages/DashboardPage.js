import { BasePage } from "./BasePage.js";

export class DashboardPage extends BasePage {

  /**
   * @param {import('playwright').Page} page
   */
  constructor(page) {
    super(page);
    this.userprofileImage = page.locator("//img[@id='user_avatar']");
    this.logoutButton = page.getByText('Log Out');
    this.dashboardMenu = page.locator("//a[@href='#dashboard' and @class='nav-link']");
    this.totalBorrowedBooks = page.locator("//div[contains(@class, 'card')]//h2[@id='borrowed_books']");
    this.totalBooks = page.locator("//div[contains(@class, 'card')]//h2[@id='book_count']");
    this.totalUsers = page.locator("//div[contains(@class, 'card')]//h2[@id='user_count']");
    this.bookLink = page.locator("//a[@href='#books' and @class='nav-link']");
    
  
   
    
  }


}
