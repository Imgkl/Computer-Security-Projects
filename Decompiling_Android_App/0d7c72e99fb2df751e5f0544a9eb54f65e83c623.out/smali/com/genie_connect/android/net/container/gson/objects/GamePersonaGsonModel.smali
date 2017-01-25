.class public Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "GamePersonaGsonModel.java"


# instance fields
.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;->nickname:Ljava/lang/String;

    return-object v0
.end method
