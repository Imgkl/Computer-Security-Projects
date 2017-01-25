.class public interface abstract annotation Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
.super Ljava/lang/Object;
.source "QuerySqlField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/ignite/cache/query/annotations/QuerySqlField;
        descending = false
        groups = {}
        index = false
        name = ""
        orderedGroups = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract descending()Z
.end method

.method public abstract groups()[Ljava/lang/String;
.end method

.method public abstract index()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract orderedGroups()[Lorg/apache/ignite/cache/query/annotations/QuerySqlField$Group;
.end method
