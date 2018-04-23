package com.sust.model;

/**
 * 项目规定的返回对像
 * @param <T>
 */
public class Result<T> {
    private Integer status;// 0代表成功，1代表失败
    private T data;
    private String msg;

    private Result() {

    }

    public static Result creat() {
        return new Result();
    }

    public static Result createStatusAndMsg(Integer status, String msg) {
        Result result = new Result();
        result.setStatus(status);
        result.setMsg(msg);
        return result;
    }

    public static <T> Result createStatusAndData(Integer status, T data) {
        Result result = new Result();
        result.setStatus(status);
        result.setData(data);
        return result;
    }

    public static <T> Result creataStatusAndDataAndMsg(Integer status, T data, String msg) {
        Result result = new Result();
        result.setStatus(status);
        result.setData(data);
        result.setMsg(msg);
        return result;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "Result{" + "status=" + status + ", data=" + data + ", msg='" + msg + '\'' + '}';
    }
}