.class public Lcom/eventgenie/android/utils/genieintent/GenieIntent;
.super Ljava/lang/Object;
.source "GenieIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final APP_ID:Ljava/lang/String; = "appid"

.field private static final ENTITY_ID:Ljava/lang/String; = "entityid"

.field private static final ENTITY_NAMESPACE:Ljava/lang/String; = "entitynamespace"


# instance fields
.field private final mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

.field private final mDomain:Ljava/lang/String;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mEntityId:J

.field private final mEventName:Ljava/lang/String;

.field private final mNamespace:J

.field private final mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mDomain:Ljava/lang/String;
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$000(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mDomain:Ljava/lang/String;

    .line 62
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$100(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 63
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$200(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    :goto_0
    iput-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 64
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEventName:Ljava/lang/String;
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$300(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEventName:Ljava/lang/String;

    .line 65
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mNamespace:J
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$400(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mNamespace:J

    .line 66
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mEntityId:J
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$500(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntityId:J

    .line 67
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$600(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .line 68
    return-void

    .line 63
    :cond_0
    # getter for: Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->access$200(Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;)V
    .locals 12
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "origin"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "urlString":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "matrixParams":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "kvParams":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v3, v0, v1

    .line 77
    .local v3, "kvParam":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "kv":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v3    # "kvParam":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEventName:Ljava/lang/String;

    .line 82
    const-string v9, "appid"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->tryLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mNamespace:J

    .line 83
    const-string v9, "action"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->fromString(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    .line 84
    const-string v9, "entitynamespace"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 85
    const-string v9, "entityid"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->tryLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntityId:J

    .line 86
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mDomain:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    .line 88
    return-void
.end method

.method public static fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->LINK:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    invoke-direct {v1, v2, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;-><init>(Ljava/net/URL;Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ GENIEINTENT: Error creating Intent from url \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static tryLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 182
    :goto_0
    return-wide v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAction()Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    return-object v0
.end method

.method public getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getEntityId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntityId:J

    return-wide v0
.end method

.method public getExternalForm(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x3b

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mDomain:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_0
    const-string v1, "/genieintents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "appid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "entitynamespace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "entityid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 110
    :cond_1
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mNamespace:J

    return-wide v0
.end method

.method public getOrigin()Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mOrigin:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    return-object v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UNKNOWN:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    if-eq v1, v2, :cond_0

    .line 153
    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntityId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 154
    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mNamespace:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenieIntent [mDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mAction:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
