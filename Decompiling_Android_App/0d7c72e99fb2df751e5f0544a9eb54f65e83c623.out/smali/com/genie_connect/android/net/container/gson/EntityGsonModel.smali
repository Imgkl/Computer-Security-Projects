.class public abstract Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.super Lcom/genie_connect/android/net/container/gson/BaseGsonModel;
.source "EntityGsonModel.java"


# static fields
.field public static final UNKNOWN_ENTITY:Ljava/lang/String; = "Unknown Entity"


# instance fields
.field private _id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field private createdDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createdDate"
    .end annotation
.end field

.field private importKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "importKey"
    .end annotation
.end field

.field private modifiedDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modifiedDate"
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
.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->createdDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->createdDate:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntity()Ljava/lang/String;
.end method

.method public getImportKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->importKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->importKey:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->importKey:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->modifiedDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->modifiedDate:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->modifiedDate:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->_id:Ljava/lang/String;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;->_id:Ljava/lang/String;

    return-object v0
.end method
