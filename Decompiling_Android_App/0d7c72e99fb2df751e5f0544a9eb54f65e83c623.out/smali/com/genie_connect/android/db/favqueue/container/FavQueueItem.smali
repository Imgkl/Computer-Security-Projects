.class public Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
.super Ljava/lang/Object;
.source "FavQueueItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/favqueue/container/FavQueueItem$FavQueueFields;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final HEADER_FIELD_SEPARATOR:Ljava/lang/String; = ":"

.field public static final HEADER_LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final NO_ID:J = -0x1L

.field private static final TIME_RETRY_DEFAULT:J = 0x36ee80L

.field private static final TTL_DEFAULT:I = 0xa

.field private static final TYPE_FAVOURITE:I = 0x1

.field private static final TYPE_GENERIC_DEFFERED_POST:I = 0x3

.field private static final TYPE_NOTE:I = 0x2


# instance fields
.field private final mAttemptEvery:Ljava/lang/Long;

.field private mAttemptLast:Ljava/lang/String;

.field private mAttemptNext:Ljava/lang/String;

.field private mAttemptTtl:J

.field private final mCreatedDate:Ljava/lang/String;

.field private final mId:Ljava/lang/Long;

.field private final mRequestBody:Ljava/lang/String;

.field private mRequestHeaders:Ljava/lang/String;

.field private final mRequestMethod:Ljava/lang/String;

.field private mRequestNamespace:Ljava/lang/String;

.field private final mRequestTargetUrl:Ljava/lang/String;

.field private final mRequestType:I

.field private mRequestUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 80
    new-instance v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem$1;

    invoke-direct {v0}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem$1;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    .line 119
    const-string v1, "requestBody"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    .line 120
    const-string v1, "requestHeaders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 121
    const-string v1, "requestMethod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 122
    const-string v1, "requestTargetUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 123
    const-string v1, "requestUserAgent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    .line 124
    const-string v1, "requestNamespace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    .line 125
    const-string v1, "attemptTtl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    .line 126
    const-string v1, "createdDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 127
    const-string v1, "attemptEvery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 128
    const-string v1, "attemptNext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    .line 129
    const-string v1, "attemptLast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    .line 130
    const-string v1, "requestType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    .line 131
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 136
    .local v0, "date":Ljava/util/Date;
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    .line 137
    sget-object v1, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 139
    const-string v1, "POST"

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    .line 141
    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 142
    const-wide/16 v2, 0xa

    iput-wide v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    .line 143
    iput p3, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    .line 144
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 5
    .param p1, "cur"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 90
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 91
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    .line 92
    iput-object v4, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 93
    iput-object v4, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 94
    iput-object v4, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 95
    iput-object v4, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 96
    iput-object v4, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    .line 114
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    .line 101
    const-string v1, "requestType"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    .line 102
    const-string v1, "requestBody"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    .line 103
    const-string v1, "requestHeaders"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 104
    const-string v1, "requestMethod"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 105
    const-string v1, "requestTargetUrl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 106
    const-string v1, "requestUserAgent"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    .line 107
    const-string v1, "requestNamespace"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    .line 108
    const-string v1, "createdDate"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 109
    const-string v1, "attemptTtl"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    .line 110
    const-string v1, "attemptEvery"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 111
    const-string v1, "attemptNext"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    .line 112
    const-string v1, "attemptLast"

    invoke-interface {p1, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFavInstance(Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getGenericPostInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getNoteInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public decreaseTtl()J
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    .line 148
    sget-object v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    .line 149
    iget-wide v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getAttemptEvery()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    return-object v0
.end method

.method public getAttemptLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    return-object v0
.end method

.method public getAttemptNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    return-object v0
.end method

.method public getAttemptTtl()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    return-wide v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "attemptEvery"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v1, "attemptLast"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "attemptNext"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "attemptTtl"

    iget-wide v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v1, "requestBody"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "createdDate"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "requestHeaders"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "requestMethod"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "requestNamespace"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "requestTargetUrl"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "requestUserAgent"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "requestType"

    iget v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFireable()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public populateHeaderInfo(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J

    .prologue
    .line 229
    invoke-static {p1, p2, p3}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->getHeaders(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setAttemptLast(Ljava/lang/String;)V
    .locals 0
    .param p1, "attemptLast"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setAttemptNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "attemptNext"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setAttemptTtl(J)V
    .locals 1
    .param p1, "attemptTtl"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    .line 242
    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestHeaders"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setRequestNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestNamespace"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setRequestUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUserAgent"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FavQueueItem [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttemptEvery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestTargetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreatedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttemptTtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttemptNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttemptLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "requestType"

    iget v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v1, "id"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 281
    const-string v1, "attemptTtl"

    iget-wide v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptTtl:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 282
    const-string v1, "attemptEvery"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptEvery:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 283
    const-string v1, "requestBody"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "requestHeaders"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestHeaders:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "requestMethod"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "requestTargetUrl"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "requestUserAgent"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "requestNamespace"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mRequestNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "createdDate"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mCreatedDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "attemptNext"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptNext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "attemptLast"

    iget-object v2, p0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->mAttemptLast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method
