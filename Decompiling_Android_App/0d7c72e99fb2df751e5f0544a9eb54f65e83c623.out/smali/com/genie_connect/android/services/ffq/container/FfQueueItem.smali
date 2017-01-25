.class public Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
.super Ljava/lang/Object;
.source "FfQueueItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/genie_connect/android/services/ffq/container/FfQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final FIELD_ATTEMPT_EVERY:Ljava/lang/String; = "attemptEvery"

.field public static final FIELD_ATTEMPT_LAST:Ljava/lang/String; = "attemptLast"

.field public static final FIELD_ATTEMPT_NEXT:Ljava/lang/String; = "attemptNext"

.field public static final FIELD_ATTEMPT_TTL:Ljava/lang/String; = "attemptTtl"

.field public static final FIELD_BODY:Ljava/lang/String; = "requestBody"

.field public static final FIELD_CREATED_DATE:Ljava/lang/String; = "createdDate"

.field public static final FIELD_HEADERS:Ljava/lang/String; = "requestHeaders"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_METHOD:Ljava/lang/String; = "requestMethod"

.field public static final FIELD_NAMESPACE:Ljava/lang/String; = "requestNamespace"

.field public static final FIELD_URL:Ljava/lang/String; = "requestTargetUrl"

.field public static final FIELD_USERAGENT:Ljava/lang/String; = "requestUserAgent"

.field public static final HEADER_FIELD_SEPARATOR:Ljava/lang/String; = ":"

.field public static final HEADER_LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final NO_ID:J = -0x1L

.field public static final TIME_RETRY_DEFAULT:J = 0x36ee80L

.field public static final TIME_RETRY_GENIEMOBILE:J = 0x36ee80L

.field private static final TTL_DEFAULT:I = 0x5

.field private static final TTL_GM:I = 0xa

.field public static final TYPE_GENERIC:I = 0x1

.field public static final TYPE_GENIEMOBILE:I = 0x2


# instance fields
.field private final mAttemptEvery:Ljava/lang/Long;

.field private mAttemptLast:Ljava/lang/String;

.field private mAttemptNext:Ljava/lang/String;

.field private mAttemptTtl:J

.field private final mCreatedDate:Ljava/lang/String;

.field private final mId:Ljava/lang/Long;

.field private mRequestBody:Ljava/lang/String;

.field private mRequestHeaders:Ljava/lang/String;

.field private final mRequestMethod:Ljava/lang/String;

.field private mRequestNamespace:Ljava/lang/String;

.field private final mRequestTargetUrl:Ljava/lang/String;

.field private mRequestUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 91
    new-instance v0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem$1;

    invoke-direct {v0}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem$1;-><init>()V

    sput-object v0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "POST"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    const-wide/32 v2, 0x36ee80

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ FFQITEM: New Item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    .line 109
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mId:Ljava/lang/Long;

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 119
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    .line 122
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 114
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 127
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 128
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mId:Ljava/lang/Long;

    .line 129
    iput-object v4, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 130
    iput-object v4, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 131
    iput-object v4, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 132
    iput-object v4, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mId:Ljava/lang/Long;

    .line 135
    const-string v1, "requestBody"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    .line 136
    const-string v1, "requestHeaders"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 137
    const-string v1, "requestMethod"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 138
    const-string v1, "requestTargetUrl"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 139
    const-string v1, "requestUserAgent"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestUserAgent:Ljava/lang/String;

    .line 140
    const-string v1, "requestNamespace"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestNamespace:Ljava/lang/String;

    .line 141
    const-string v1, "createdDate"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 142
    const-string v1, "attemptTtl"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    .line 143
    const-string v1, "attemptEvery"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 144
    const-string v1, "attemptNext"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptNext:Ljava/lang/String;

    .line 145
    const-string v1, "attemptLast"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mId:Ljava/lang/Long;

    .line 152
    const-string v1, "requestBody"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    .line 153
    const-string v1, "requestHeaders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 154
    const-string v1, "requestMethod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    .line 155
    const-string v1, "requestTargetUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    .line 156
    const-string v1, "requestUserAgent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestUserAgent:Ljava/lang/String;

    .line 157
    const-string v1, "requestNamespace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestNamespace:Ljava/lang/String;

    .line 158
    const-string v1, "attemptTtl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    .line 159
    const-string v1, "createdDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    .line 160
    const-string v1, "attemptEvery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    .line 161
    const-string v1, "attemptNext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptNext:Ljava/lang/String;

    .line 162
    const-string v1, "attemptLast"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public decreaseTtl()J
    .locals 6

    .prologue
    .line 272
    iget-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    .line 274
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 275
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ FFQITEM: Reducing TTL - new TTL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 278
    iget-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    return-wide v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getAttemptEvery()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    return-object v0
.end method

.method public getAttemptLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    return-object v0
.end method

.method public getAttemptNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptNext:Ljava/lang/String;

    return-object v0
.end method

.method public getAttemptTtl()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    return-wide v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "attemptEvery"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string v1, "attemptLast"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "attemptNext"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptNext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "attemptTtl"

    iget-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    const-string v1, "requestBody"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "createdDate"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "requestHeaders"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestHeaders:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "requestMethod"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "requestNamespace"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "requestTargetUrl"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "requestUserAgent"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFireable()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public setAttemptLast(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAttemptLast"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setAttemptNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAttemptNext"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptNext:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setAttemptTtl(J)V
    .locals 1
    .param p1, "mAttemptTtl"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    .line 228
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRequestBody"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRequestHeaders"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestHeaders:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setRequestNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRequestNamespace"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestNamespace:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setRequestUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRequestUserAgent"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestUserAgent:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const-string v1, "requestBody"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "requestHeaders"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestHeaders:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "requestMethod"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "requestTargetUrl"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "requestUserAgent"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "requestNamespace"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mRequestNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "createdDate"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mCreatedDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "attemptEvery"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptEvery:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    const-string v1, "attemptNext"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptNext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "attemptLast"

    iget-object v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptLast:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "attemptTtl"

    iget-wide v2, p0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->mAttemptTtl:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 262
    return-void
.end method
