import { BasePage } from "./BasePage.js";

export class BorrowingBooksPage extends BasePage {
/**
   * @param {import('playwright').Page} page
   */
constructor(page) {
  super(page);
  this.borrowingBooksMenu = page.locator("//span[text()='Borrowing Books']");
  this.borrowedBookMsg = page.locator("//div[@class='toast-message' and text()='The book has been borrowed...']");
  this.borrowBookBtnDis = page.locator("(//a[contains(@onclick, 'Books.borrow_book') and contains(@class, 'btn-primary') and contains(@class, 'disabled')])[1]");
  this.borrowBooBtn = page.locator("(//a[contains(@onclick, 'Books.borrow_book') and contains(@class, 'btn-primary') and not(contains(@class, 'disabled')) and contains(., 'Borrow Book')])[1]");
  
  
}



}
