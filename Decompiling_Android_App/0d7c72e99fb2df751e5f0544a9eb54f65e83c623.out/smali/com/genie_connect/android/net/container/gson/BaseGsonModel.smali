.class public abstract Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.super Ljava/lang/Object;
.source "BaseGsonModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected returnValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string p1, "null"

    .line 38
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
