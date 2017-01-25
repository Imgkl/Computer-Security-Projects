.class public Lcom/urbanairship/actions/ActionValue;
.super Ljava/lang/Object;
.source "ActionValue.java"

# interfaces
.implements Lcom/urbanairship/json/JsonSerializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jsonValue:Lcom/urbanairship/json/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/urbanairship/actions/ActionValue$1;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/actions/ActionValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    iput-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/json/JsonValue;)V
    .locals 0
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    sget-object p1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .end local p1    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    .line 51
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionValue;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/actions/ActionValueException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v1, Lcom/urbanairship/actions/ActionValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ActionValue object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/actions/ActionValueException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 164
    instance-of v1, p1, Lcom/urbanairship/actions/ActionValue;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/urbanairship/actions/ActionValue;

    .line 166
    .local v0, "o":Lcom/urbanairship/actions/ActionValue;
    iget-object v1, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    iget-object v2, v0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 169
    .end local v0    # "o":Lcom/urbanairship/actions/ActionValue;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(D)D
    .locals 3
    .param p1, "defaultValue"    # D

    .prologue
    .line 112
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/json/JsonValue;->getDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getList()Lcom/urbanairship/json/JsonList;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    return-object v0
.end method

.method public getLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/ActionValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    return v0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    return-void
.end method
