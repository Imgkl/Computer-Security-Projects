.class Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$13;
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
    .line 182
    iput-object p1, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$13;->this$0:Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    invoke-direct {p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCount;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/SurveyRepository;

    .line 186
    .local v0, "repository":Lcom/genie_connect/android/repository/SurveyRepository;
    invoke-virtual {v0}, Lcom/genie_connect/android/repository/SurveyRepository;->getValidUnsubmittedSurveys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method
