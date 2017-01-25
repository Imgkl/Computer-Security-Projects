.class final Lcom/urbanairship/actions/ActionValue$1;
.super Ljava/lang/Object;
.source "ActionValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/actions/ActionValue;
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
        "Lcom/urbanairship/actions/ActionValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/actions/ActionValue;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 209
    new-instance v1, Lcom/urbanairship/actions/ActionValue;

    const-class v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v1, v0}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/ActionValue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/urbanairship/actions/ActionValue;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 214
    new-array v0, p1, [Lcom/urbanairship/actions/ActionValue;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/ActionValue$1;->newArray(I)[Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    return-object v0
.end method
