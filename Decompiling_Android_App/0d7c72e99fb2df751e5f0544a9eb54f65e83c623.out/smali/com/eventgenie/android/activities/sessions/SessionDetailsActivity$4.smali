.class Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$4;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "SessionDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getData(Ljava/lang/Class;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$4;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-direct {p0, p2}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$4;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v0

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$4;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move v8, v4

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v0 .. v11}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
