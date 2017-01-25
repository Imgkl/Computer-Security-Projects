.class public abstract Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "BaseRpcGsonModel.java"


# static fields
.field public static final STATUS_DATAONLY:I = 0x10

.field public static final STATUS_ERROR:I = 0x4

.field public static final STATUS_FILE:I = 0x8

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_WARNING:I = 0x2

.field public static final STATUS_WTF:I = -0x1


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/BaseGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;->status:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, -0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/BaseRpcGsonModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public abstract isValid()Z
.end method
