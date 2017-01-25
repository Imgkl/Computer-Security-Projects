.class Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;
.super Landroid/os/AsyncTask;
.source "MessageDetailsV2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetMeetingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final meetingId:J

.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;J)V
    .locals 0
    .param p2, "meetingId"    # J

    .prologue
    .line 385
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 386
    iput-wide p2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->meetingId:J

    .line 387
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 391
    new-instance v2, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-direct {v2, v4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 392
    .local v2, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->meetingId:J

    invoke-virtual {v2, v4, v6, v7}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v3

    .line 394
    .local v3, "res":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :try_start_0
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 395
    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 396
    new-instance v4, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v1

    .line 400
    .local v1, "meeting":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 401
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 411
    .end local v1    # "meeting":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :goto_0
    return-object v4

    .line 403
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 406
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MESSAGE: Error while downloading meeting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 382
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "res"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 417
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v1, v4, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->showIndicator(ZZ)V

    .line 418
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$000(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/Udm;->meetingsGet(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 421
    .local v0, "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    const-string v2, "meetingType"

    invoke-interface {v0, v2}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingType:I
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$102(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;I)I

    .line 423
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    sget v3, Lcom/eventgenie/android/R$id;->meetingDetailsBlock:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->populateDetailsView(Landroid/view/View;Z)V

    .line 424
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getVisitorDetailsView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    sget v2, Lcom/eventgenie/android/R$id;->meetingDetailsBlock:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    invoke-static {v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setupBottomBar(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;)V

    .line 428
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    invoke-static {v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    invoke-static {v3}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getVisitorDetailsView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->populateEntityDetailsBlock(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Landroid/view/View;)V

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->close(Landroid/database/Cursor;)V

    .line 435
    .end local v0    # "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_0
    return-void

    .line 430
    .restart local v0    # "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_1
    const-string v1, "^ MESSAGE: PostDL not found!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    sget v2, Lcom/eventgenie/android/R$id;->meetingDetailsBlock:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 382
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;->this$0:Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->showIndicator(ZZ)V

    .line 440
    return-void
.end method
