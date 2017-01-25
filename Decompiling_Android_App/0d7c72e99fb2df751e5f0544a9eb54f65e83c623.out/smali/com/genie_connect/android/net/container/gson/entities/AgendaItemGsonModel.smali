.class public Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "AgendaItemGsonModel.java"


# instance fields
.field private eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eventDay"
    .end annotation
.end field

.field private fullDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullDescription"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isDeletable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isDeletable"
    .end annotation
.end field

.field private isWaitlisted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isWaitlisted"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runningTime"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visitor"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/Long;
    .param p3, "eventDay"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "until"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    .line 72
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->id:J

    .line 74
    :cond_0
    iput-object p6, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->name:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->type:Ljava/lang/String;

    .line 76
    iput-object p7, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->fullDescription:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    invoke-direct {v0, p3}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    .line 78
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    invoke-direct {v0, p4, p5}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->isDeletable:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->isWaitlisted:Z

    .line 81
    return-void
.end method

.method public static getAdhocInstance(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;
    .locals 8
    .param p0, "id"    # Ljava/lang/Long;
    .param p1, "eventDay"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "until"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;

    const-string v1, "adhoc"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "agendaitems"

    return-object v0
.end method

.method public getEventDay()Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->eventDay:Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->fullDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->runningTime:Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-direct {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->visitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    return-object v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->isDeletable:Z

    return v0
.end method

.method public isWaitlisted()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/genie_connect/android/net/container/gson/entities/AgendaItemGsonModel;->isWaitlisted:Z

    return v0
.end method
