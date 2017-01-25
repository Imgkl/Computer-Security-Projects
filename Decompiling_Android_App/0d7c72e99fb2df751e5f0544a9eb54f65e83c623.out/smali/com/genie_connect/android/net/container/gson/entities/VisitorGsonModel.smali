.class public Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "VisitorGsonModel.java"


# instance fields
.field private address:Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private companyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "companyName"
    .end annotation
.end field

.field private contact:Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contact"
    .end annotation
.end field

.field private department:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "department"
    .end annotation
.end field

.field private enableGamification:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableGamification"
    .end annotation
.end field

.field private firstNames:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstNames"
    .end annotation
.end field

.field private fullDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullDescription"
    .end annotation
.end field

.field private gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gamePersona"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private jobTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jobTitle"
    .end annotation
.end field

.field private lastNames:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastNames"
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale"
    .end annotation
.end field

.field private meetingDebits:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingDebits"
    .end annotation
.end field

.field private messageDebits:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageDebits"
    .end annotation
.end field

.field private mugShotUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mugShotUrl"
    .end annotation
.end field

.field private reasonForAttending:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reasonForAttending"
    .end annotation
.end field

.field private secondaryVisitorGroups:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secondaryVisitorGroups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private showMe:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showMe"
    .end annotation
.end field

.field private timezone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timezone"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private totalPlayerPoints:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalPlayerPoints"
    .end annotation
.end field

.field private userType:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userType"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field private visitorGroup:Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visitorGroup"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    return-void
.end method

.method private formFullName()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->firstNames:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->lastNames:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->firstNames:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->lastNames:Ljava/lang/String;

    goto :goto_2
.end method

.method private getSecondaryVisitorGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->secondaryVisitorGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->secondaryVisitorGroups:Ljava/util/List;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->secondaryVisitorGroups:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAddress()Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->address:Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->address:Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->address:Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllVisitorGroupNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v2, "methodResult":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getSecondaryVisitorGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    .line 146
    .local v0, "group":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "group":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    :cond_2
    return-object v2
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getContact()Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->contact:Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->contact:Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->contact:Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDepartment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->department:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "visitors"

    return-object v0
.end method

.method public getFirstNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->firstNames:Ljava/lang/String;

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->fullDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName(Z)Ljava/lang/String;
    .locals 1
    .param p1, "forGamification"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->formFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->formFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getGamePersona()Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->id:J

    return-wide v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->jobTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLastNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->lastNames:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingDebits()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->meetingDebits:I

    return v0
.end method

.method public getMessageDebits()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->messageDebits:I

    return v0
.end method

.method public getMugShotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->mugShotUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonForAttending()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->reasonForAttending:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPlayerPoints()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->totalPlayerPoints:J

    return-wide v0
.end method

.method public getUserType()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->userType:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->visitorGroup:Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->visitorGroup:Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->visitorGroup:Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    return-object v0
.end method

.method public isEnableGamification()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->enableGamification:Z

    return v0
.end method

.method public isShowMe()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->showMe:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisitorGsonModel [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->userType:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mugShotUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->mugShotUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->fullDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageDebits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->messageDebits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->lastNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->firstNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingDebits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->meetingDebits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalPlayerPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->totalPlayerPoints:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", companyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", department="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->department:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reasonForAttending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->reasonForAttending:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->contact:Lcom/genie_connect/android/net/container/gson/objects/ContactGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jobTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->jobTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableGamification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->enableGamification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->address:Lcom/genie_connect/android/net/container/gson/objects/AddressGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gamePersona="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->gamePersona:Lcom/genie_connect/android/net/container/gson/objects/GamePersonaGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->showMe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
