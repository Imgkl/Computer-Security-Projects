.class public interface abstract Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;
.super Ljava/lang/Object;
.source "SqlSelectBuilder.java"


# virtual methods
.method public abstract build()Luk/co/alt236/easycursor/EasyQueryModel;
.end method

.method public abstract getGroupBy()Ljava/lang/String;
.end method

.method public abstract getHaving()Ljava/lang/String;
.end method

.method public abstract getLimit()Ljava/lang/String;
.end method

.method public abstract getOrderBy()Ljava/lang/String;
.end method

.method public abstract getSelect()[Ljava/lang/String;
.end method

.method public abstract getTables()Ljava/lang/String;
.end method

.method public abstract getWhere()Ljava/lang/String;
.end method

.method public abstract getWhereArgs()[Ljava/lang/String;
.end method

.method public abstract isDistinct()Z
.end method

.method public abstract isStrict()Z
.end method
