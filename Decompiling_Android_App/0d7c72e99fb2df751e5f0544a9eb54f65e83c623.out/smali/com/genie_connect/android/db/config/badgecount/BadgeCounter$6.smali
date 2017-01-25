.class Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$6;
.super Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
.source "BadgeCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->getBadgeForWidget(Lcom/genie_connect/android/db/config/GenieWidget;J)Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$6;->this$0:Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    invoke-direct {p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCount;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v2

    const-class v3, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v2, v3}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/AgendaItemRepository;

    .line 102
    .local v1, "repo":Lcom/genie_connect/android/repository/AgendaItemRepository;
    invoke-virtual {v1, v4, v4, v4}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 129
    .local v0, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    return v2
.end method
