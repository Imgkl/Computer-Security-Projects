.class Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$2;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "ExhibitorDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getData(Ljava/lang/Class;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    invoke-direct {p0, p2}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->access$100(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForExhibitorProducts(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
