package kr.ac.kopo.bookstore.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kr.ac.kopo.bookstore.model.Book;

@Repository
public class BookDaoImpl implements BookDao {
	List<Book> list;
	
	public BookDaoImpl() {
		list = new ArrayList<Book>();
		Book book = new Book();
		book.setBookid(10);
		book.setBookname("엑셀");
		book.setPublisher("한빛미디어");
		book.setPrice(2000);
		
		list.add(book);
	}
	
	@Override
	public List<Book> list() {
		return list;
	}

	@Override
	public void add(Book item) {
		list.add(item);
	}

	@Override
	public Book item(int bookid) {
		for(Book item : list) {
			if(item.getBookid() == bookid) {
				return item;
			}
		}
		return null;
	}

	@Override
	public void update(Book item) {
		for(int i = 0; i < list.size(); i++) {
			if(item.getBookid() == list.get(i).getBookid()) {
				list.set(i, item);
				break;
			}
		}
		
	}

	@Override
	public void delete(int bookid) {
		int idx = -1;
		for(int i = 0; i < list.size(); i++) {
			if(bookid == list.get(i).getBookid()) {
				idx = i;
				break;
			}
		}
		
		if(idx != -1) list.remove(idx);
		else System.out.println("삭제 실패 : bookid가 " + bookid + "인 책이 없습니다.");
	}

}
