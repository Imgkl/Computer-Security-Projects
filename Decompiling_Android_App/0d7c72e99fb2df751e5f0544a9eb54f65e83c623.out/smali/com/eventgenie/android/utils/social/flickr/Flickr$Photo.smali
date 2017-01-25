.class public Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
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
    name = "Photo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDate:Ljava/lang/String;

.field private mFarm:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mOwner:Ljava/lang/String;

.field private mSecret:Ljava/lang/String;

.field private mServer:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 920
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mSecret:Ljava/lang/String;

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mServer:Ljava/lang/String;

    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mFarm:Ljava/lang/String;

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mTitle:Ljava/lang/String;

    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;

    .line 943
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/flickr/Flickr$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$1;

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$1;

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;-><init>()V

    return-void
.end method

.method static synthetic access$1502(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mFarm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotpageUrl(Z)Ljava/lang/String;
    .locals 2
    .param p1, "mobile"    # Z

    .prologue
    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "http://m.flickr.com/#/photos/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://www.flickr.com/photos/"

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Ljava/lang/String;
    .locals 4
    .param p1, "photoSize"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .prologue
    .line 987
    const-string v0, "http://farm%s.static.flickr.com/%s/%s_%s%s.jpg"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mFarm:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mServer:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mSecret:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->size()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadPhotoBitmap(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "size"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .prologue
    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 1004
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1007
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->getUrl(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1014
    .local v2, "dataStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v7, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1015
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .local v7, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    # invokes: Lcom/eventgenie/android/utils/social/flickr/Flickr;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    invoke-static {v5, v7}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->access$4100(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1016
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1018
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1019
    .local v1, "data":[B
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 1024
    invoke-static {v5}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 1025
    invoke-static {v7}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 1028
    .end local v1    # "data":[B
    .end local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 1021
    :catch_0
    move-exception v3

    .line 1022
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FLICKR: Could not load photo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1024
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 1025
    invoke-static {v6}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1024
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 1025
    invoke-static {v6}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v8

    .line 1024
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 1021
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
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

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
    .line 1038
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mFarm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;->mOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1045
    return-void
.end method
