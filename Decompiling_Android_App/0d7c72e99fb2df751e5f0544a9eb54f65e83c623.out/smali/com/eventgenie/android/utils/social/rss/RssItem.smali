.class public Lcom/eventgenie/android/utils/social/rss/RssItem;
.super Ljava/lang/Object;
.source "RssItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/social/rss/RssItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComments:Ljava/lang/String;

.field private mContentEncoded:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mContentUrl:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mGuid:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field private mPubDate:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/eventgenie/android/utils/social/rss/RssItem$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/rss/RssItem$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/rss/RssItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mTitle:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mLink:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mComments:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mPubDate:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mGuid:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mDescription:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentEncoded:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mThumbnailUrl:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/rss/RssItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/rss/RssItem$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/rss/RssItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mComments:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentEncoded:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentEncoded:Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mPubDate:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isContentMedia()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaybackable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yospace.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0
    .param p1, "mComments"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mComments:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setContentEncoded(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentEncoded"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentEncoded:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mDescription:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGuid"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mGuid:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLink"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mLink:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setPubDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPubDate"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mPubDate:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mTitle:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TITLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THUMB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mDescription:Ljava/lang/String;

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
    .line 212
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mComments:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mPubDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentEncoded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssItem;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return-void
.end method
