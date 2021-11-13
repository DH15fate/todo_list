package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Todo;

public class MessageValidator {
    //バリデーションチェック
    public static List<String> validate(Todo m){
        List<String> errors = new ArrayList<String>();

        String title_error = validateTitle(m.getTitle());
        if(!title_error.equals("")) {
            errors.add(title_error);
        }

        String content_error = validateContent(m.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;

    }

    //タイトル入力チェック
    private static String validateTitle(String title) {
        if(title == null || title.equals("")) {
            return"タイトルを入力してください";
        }

        return "";

    }
    //内容入力チェック
    private static String validateContent(String content) {
        if(content == null || content.equals("")) {
            return "内容を入力してください";
        }

        return "";

    }
}
