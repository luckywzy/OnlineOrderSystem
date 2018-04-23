package com.sust.utils;

import com.sust.constants.ResultConstant;
import com.sust.constants.TUserConstant;
import com.sust.model.Result;
import com.sust.model.TUser;

/**
 * OnlineOrder
 * com.sust.utils
 * 2018/4/23
 */
public class ResultUtil {
    /**
     * 创建一些通用的Result的工具类
     */
        // 创建通过密码登录是否成功的Result
        public static Result buildForPasswordLogin(TUser user) {
            if (user == null) {
                return Result.createStatusAndMsg(ResultConstant.FAIL_STATUS, TUserConstant.PASSWORD_LOGIN_FAIL_MESSAGE);
            } else {
                return Result.createStatusAndData(ResultConstant.SUCCESS_STATUS, user);
            }
        }

        // 任何情况都成功的Result
        public static <T> Result buildForSuccess(T data) {
            return Result.createStatusAndData(ResultConstant.SUCCESS_STATUS, data);
        }

        // null失败，非null成功的Result
        public static <T> Result buildForNullCheck(T data) {
            if (data == null) {
                return Result.createStatusAndData(ResultConstant.FAIL_STATUS, data);
            } else {
                return Result.createStatusAndData(ResultConstant.SUCCESS_STATUS, data);
            }
        }

}
