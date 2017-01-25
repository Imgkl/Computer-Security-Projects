.class final Lcom/urbanairship/push/iam/InAppMessage$1;
.super Ljava/lang/Object;
.source "InAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessage;
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
        "Lcom/urbanairship/push/iam/InAppMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 203
    new-instance v1, Lcom/urbanairship/push/iam/InAppMessage;

    invoke-direct {v1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>()V

    .line 204
    .local v1, "inAppMessage":Lcom/urbanairship/push/iam/InAppMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$002(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$102(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/urbanairship/push/iam/InAppMessage;->access$202(Lcom/urbanairship/push/iam/InAppMessage;J)J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$302(Lcom/urbanairship/push/iam/InAppMessage;I)I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$402(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Long;)Ljava/lang/Long;

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$502(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$602(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 220
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$702(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/json/JsonMap;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$802(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$902(Lcom/urbanairship/push/iam/InAppMessage;Ljava/util/Map;)Ljava/util/Map;

    .line 228
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 230
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$1002(Lcom/urbanairship/push/iam/InAppMessage;Ljava/util/Map;)Ljava/util/Map;

    .line 231
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1000(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 232
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    const-string v2, "InAppMessage - unable to parse extras from parcel."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 223
    new-instance v2, Lcom/urbanairship/json/JsonMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->access$702(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/json/JsonMap;

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 237
    new-array v0, p1, [Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage$1;->newArray(I)[Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    return-object v0
.end method
