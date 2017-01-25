.class Lcom/julysystems/appx/AppXPageData$1;
.super Ljava/lang/Object;
.source "AppXPageData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/julysystems/appx/AppXPageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/julysystems/appx/AppXPageData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/julysystems/appx/AppXPageData;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .local v1, "len":I
    new-array v0, v1, [B

    .line 157
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 158
    new-instance v2, Lcom/julysystems/appx/AppXPageData;

    invoke-direct {v2, v0}, Lcom/julysystems/appx/AppXPageData;-><init>([B)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXPageData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/julysystems/appx/AppXPageData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/julysystems/appx/AppXPageData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Lcom/julysystems/appx/AppXPageData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXPageData$1;->newArray(I)[Lcom/julysystems/appx/AppXPageData;

    move-result-object v0

    return-object v0
.end method
