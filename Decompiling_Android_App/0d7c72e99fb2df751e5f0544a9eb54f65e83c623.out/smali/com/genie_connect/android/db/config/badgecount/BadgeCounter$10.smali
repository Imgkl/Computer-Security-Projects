.class Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;
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

.field final synthetic val$namespace:J


# direct methods
.method constructor <init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;->this$0:Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    iput-wide p2, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;->val$namespace:J

    invoke-direct {p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCount;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;->this$0:Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    # getter for: Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->access$000(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;->val$namespace:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/Udm;->getNumberOfFav(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    move-result v0

    return v0
.end method
