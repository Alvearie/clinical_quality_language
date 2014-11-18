package org.cqframework.cql.cql2elm.model;

import org.antlr.v4.runtime.misc.NotNull;
import org.hl7.elm_modelinfo.r1.ClassInfo;

public class ClassDetail {
    public ClassInfo getClassInfo() {
        return classInfo;
    }

    public void setClassInfo(@NotNull ClassInfo classInfo) {
        this.classInfo = classInfo;
    }

    public Class getModelClass() {
        return modelClass;
    }

    public void setModelClass(@NotNull Class modelClass) {
        this.modelClass = modelClass;
    }

    private ClassInfo classInfo;
    private Class modelClass;
}
