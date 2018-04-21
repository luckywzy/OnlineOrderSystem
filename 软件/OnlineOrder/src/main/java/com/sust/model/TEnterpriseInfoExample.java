package com.sust.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TEnterpriseInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TEnterpriseInfoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdIsNull() {
            addCriterion("enterprise_id is null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdIsNotNull() {
            addCriterion("enterprise_id is not null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdEqualTo(String value) {
            addCriterion("enterprise_id =", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdNotEqualTo(String value) {
            addCriterion("enterprise_id <>", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdGreaterThan(String value) {
            addCriterion("enterprise_id >", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdGreaterThanOrEqualTo(String value) {
            addCriterion("enterprise_id >=", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdLessThan(String value) {
            addCriterion("enterprise_id <", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdLessThanOrEqualTo(String value) {
            addCriterion("enterprise_id <=", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdLike(String value) {
            addCriterion("enterprise_id like", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdNotLike(String value) {
            addCriterion("enterprise_id not like", value, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdIn(List<String> values) {
            addCriterion("enterprise_id in", values, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdNotIn(List<String> values) {
            addCriterion("enterprise_id not in", values, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdBetween(String value1, String value2) {
            addCriterion("enterprise_id between", value1, value2, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseIdNotBetween(String value1, String value2) {
            addCriterion("enterprise_id not between", value1, value2, "enterpriseId");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameIsNull() {
            addCriterion("enterprise_company_name is null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameIsNotNull() {
            addCriterion("enterprise_company_name is not null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameEqualTo(String value) {
            addCriterion("enterprise_company_name =", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameNotEqualTo(String value) {
            addCriterion("enterprise_company_name <>", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameGreaterThan(String value) {
            addCriterion("enterprise_company_name >", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameGreaterThanOrEqualTo(String value) {
            addCriterion("enterprise_company_name >=", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameLessThan(String value) {
            addCriterion("enterprise_company_name <", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameLessThanOrEqualTo(String value) {
            addCriterion("enterprise_company_name <=", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameLike(String value) {
            addCriterion("enterprise_company_name like", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameNotLike(String value) {
            addCriterion("enterprise_company_name not like", value, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameIn(List<String> values) {
            addCriterion("enterprise_company_name in", values, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameNotIn(List<String> values) {
            addCriterion("enterprise_company_name not in", values, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameBetween(String value1, String value2) {
            addCriterion("enterprise_company_name between", value1, value2, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseCompanyNameNotBetween(String value1, String value2) {
            addCriterion("enterprise_company_name not between", value1, value2, "enterpriseCompanyName");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManIsNull() {
            addCriterion("enterprise_link_man is null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManIsNotNull() {
            addCriterion("enterprise_link_man is not null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManEqualTo(String value) {
            addCriterion("enterprise_link_man =", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManNotEqualTo(String value) {
            addCriterion("enterprise_link_man <>", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManGreaterThan(String value) {
            addCriterion("enterprise_link_man >", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManGreaterThanOrEqualTo(String value) {
            addCriterion("enterprise_link_man >=", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManLessThan(String value) {
            addCriterion("enterprise_link_man <", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManLessThanOrEqualTo(String value) {
            addCriterion("enterprise_link_man <=", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManLike(String value) {
            addCriterion("enterprise_link_man like", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManNotLike(String value) {
            addCriterion("enterprise_link_man not like", value, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManIn(List<String> values) {
            addCriterion("enterprise_link_man in", values, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManNotIn(List<String> values) {
            addCriterion("enterprise_link_man not in", values, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManBetween(String value1, String value2) {
            addCriterion("enterprise_link_man between", value1, value2, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterpriseLinkManNotBetween(String value1, String value2) {
            addCriterion("enterprise_link_man not between", value1, value2, "enterpriseLinkMan");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumIsNull() {
            addCriterion("enterprise_phone_num is null");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumIsNotNull() {
            addCriterion("enterprise_phone_num is not null");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumEqualTo(String value) {
            addCriterion("enterprise_phone_num =", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumNotEqualTo(String value) {
            addCriterion("enterprise_phone_num <>", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumGreaterThan(String value) {
            addCriterion("enterprise_phone_num >", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumGreaterThanOrEqualTo(String value) {
            addCriterion("enterprise_phone_num >=", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumLessThan(String value) {
            addCriterion("enterprise_phone_num <", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumLessThanOrEqualTo(String value) {
            addCriterion("enterprise_phone_num <=", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumLike(String value) {
            addCriterion("enterprise_phone_num like", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumNotLike(String value) {
            addCriterion("enterprise_phone_num not like", value, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumIn(List<String> values) {
            addCriterion("enterprise_phone_num in", values, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumNotIn(List<String> values) {
            addCriterion("enterprise_phone_num not in", values, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumBetween(String value1, String value2) {
            addCriterion("enterprise_phone_num between", value1, value2, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterprisePhoneNumNotBetween(String value1, String value2) {
            addCriterion("enterprise_phone_num not between", value1, value2, "enterprisePhoneNum");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressIsNull() {
            addCriterion("enterprise_address is null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressIsNotNull() {
            addCriterion("enterprise_address is not null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressEqualTo(String value) {
            addCriterion("enterprise_address =", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressNotEqualTo(String value) {
            addCriterion("enterprise_address <>", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressGreaterThan(String value) {
            addCriterion("enterprise_address >", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressGreaterThanOrEqualTo(String value) {
            addCriterion("enterprise_address >=", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressLessThan(String value) {
            addCriterion("enterprise_address <", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressLessThanOrEqualTo(String value) {
            addCriterion("enterprise_address <=", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressLike(String value) {
            addCriterion("enterprise_address like", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressNotLike(String value) {
            addCriterion("enterprise_address not like", value, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressIn(List<String> values) {
            addCriterion("enterprise_address in", values, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressNotIn(List<String> values) {
            addCriterion("enterprise_address not in", values, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressBetween(String value1, String value2) {
            addCriterion("enterprise_address between", value1, value2, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseAddressNotBetween(String value1, String value2) {
            addCriterion("enterprise_address not between", value1, value2, "enterpriseAddress");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailIsNull() {
            addCriterion("enterprise_email is null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailIsNotNull() {
            addCriterion("enterprise_email is not null");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailEqualTo(String value) {
            addCriterion("enterprise_email =", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailNotEqualTo(String value) {
            addCriterion("enterprise_email <>", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailGreaterThan(String value) {
            addCriterion("enterprise_email >", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailGreaterThanOrEqualTo(String value) {
            addCriterion("enterprise_email >=", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailLessThan(String value) {
            addCriterion("enterprise_email <", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailLessThanOrEqualTo(String value) {
            addCriterion("enterprise_email <=", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailLike(String value) {
            addCriterion("enterprise_email like", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailNotLike(String value) {
            addCriterion("enterprise_email not like", value, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailIn(List<String> values) {
            addCriterion("enterprise_email in", values, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailNotIn(List<String> values) {
            addCriterion("enterprise_email not in", values, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailBetween(String value1, String value2) {
            addCriterion("enterprise_email between", value1, value2, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andEnterpriseEmailNotBetween(String value1, String value2) {
            addCriterion("enterprise_email not between", value1, value2, "enterpriseEmail");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}