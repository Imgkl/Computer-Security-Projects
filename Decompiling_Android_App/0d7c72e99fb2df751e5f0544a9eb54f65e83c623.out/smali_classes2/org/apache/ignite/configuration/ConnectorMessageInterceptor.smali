.class public interface abstract Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;
.super Ljava/lang/Object;
.source "ConnectorMessageInterceptor.java"


# virtual methods
.method public abstract onReceive(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onSend(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
