.class public Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
.super Ljava/lang/Object;
.source "GenieIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/genieintent/GenieIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field private mDomain:Ljava/lang/String;

.field private mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mEntityId:J

.field private mEventName:Ljava/lang/String;

.field private mNamespace:J

.field private mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mDomain:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 190
    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    iput-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 191
    iput-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEventName:Ljava/lang/String;

    .line 192
    iput-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mNamespace:J

    .line 193
    iput-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntityId:J

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mNamespace:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntityId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)V

    return-object v0
.end method

.method public setAction(Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 0
    .param p1, "action"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 202
    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mDomain:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 0
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 212
    return-object p0
.end method

.method public setEntityId(J)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntityId:J

    .line 217
    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEventName:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setNamespace(J)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 1
    .param p1, "namespace"    # J

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mNamespace:J

    .line 227
    return-object p0
.end method

.method public setOrigin(Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    .locals 0
    .param p1, "origin"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .line 232
    return-object p0
.end method
