.class public interface abstract annotation Lorg/apache/ignite/cache/query/annotations/QuerySqlFunction;
.super Ljava/lang/Object;
.source "QuerySqlFunction.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/ignite/cache/query/annotations/QuerySqlFunction;
        alias = ""
        deterministic = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract deterministic()Z
.end method
