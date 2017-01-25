.class public Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
.super Ljava/lang/Object;
.source "Flickr.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIconFarm:Ljava/lang/String;

.field private mIconServer:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIsPro:Z

.field private mLocation:Ljava/lang/String;

.field private mMobileUrl:Ljava/lang/String;

.field private mPhotosUrl:Ljava/lang/String;

.field private mProfileUrl:Ljava/lang/String;

.field private mRealName:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1335
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    .line 1350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mUserName:Ljava/lang/String;

    .line 1351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mRealName:Ljava/lang/String;

    .line 1352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mLocation:Ljava/lang/String;

    .line 1353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mPhotosUrl:Ljava/lang/String;

    .line 1354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mProfileUrl:Ljava/lang/String;

    .line 1355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mMobileUrl:Ljava/lang/String;

    .line 1356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIsPro:Z

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconServer:Ljava/lang/String;

    .line 1358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconFarm:Ljava/lang/String;

    .line 1359
    return-void

    .line 1356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/flickr/Flickr$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$1;

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "nsid"    # Ljava/lang/String;

    .prologue
    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    .line 1363
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/eventgenie/android/utils/social/flickr/Flickr$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$1;

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3102(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 1323
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIsPro:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconFarm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mRealName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mPhotosUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mProfileUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mMobileUrl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x0

    return v0
.end method

.method public getBuddyIconUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconFarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1379
    :cond_0
    const-string v0, "https://www.flickr.com/images/buddyicon.jpg"

    .line 1381
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://farm%s.static.flickr.com/%s/buddyicons/%s.jpg"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconFarm:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconServer:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method getMobileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mMobileUrl:Ljava/lang/String;

    return-object v0
.end method

.method getPhotosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mPhotosUrl:Ljava/lang/String;

    return-object v0
.end method

.method getProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method isPro()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIsPro:Z

    return v0
.end method

.method loadBuddyIcon()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 1472
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1475
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->getBuddyIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1482
    .local v2, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v7, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1483
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_2
    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    invoke-static {v5, v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$4100(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1484
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 1486
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1487
    .local v1, "data":[B
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 1492
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 1493
    invoke-static {v7}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 1496
    .end local v1    # "data":[B
    .end local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 1489
    :catch_0
    move-exception v3

    .line 1490
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FLICKR: Could not load buddy icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1492
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 1493
    invoke-static {v6}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1492
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 1493
    invoke-static {v6}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v8

    .line 1492
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 1489
    .end local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mRealName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mRealName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mPhotosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mProfileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mMobileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1513
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIsPro:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;->mIconFarm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1516
    return-void

    .line 1513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
