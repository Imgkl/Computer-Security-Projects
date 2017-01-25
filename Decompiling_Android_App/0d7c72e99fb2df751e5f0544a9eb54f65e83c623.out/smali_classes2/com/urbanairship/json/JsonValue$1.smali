.class final Lcom/urbanairship/json/JsonValue$1;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/json/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/urbanairship/json/JsonValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/json/JsonValue;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 554
    :goto_0
    return-object v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    const-string v1, "JsonValue - Unable to create JsonValue from parcel."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/urbanairship/json/JsonValue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/urbanairship/json/JsonValue;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 560
    new-array v0, p1, [Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/urbanairship/json/JsonValue$1;->newArray(I)[Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method
