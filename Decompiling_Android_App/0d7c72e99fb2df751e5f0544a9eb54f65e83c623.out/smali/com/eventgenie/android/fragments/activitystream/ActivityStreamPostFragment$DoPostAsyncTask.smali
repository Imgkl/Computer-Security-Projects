.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoPostAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/squareup/okhttp/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private cancelDoingPostUI(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    .line 673
    if-eqz p1, :cond_0

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    sget v4, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v2, v3, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 678
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 679
    .local v0, "data":Landroid/content/Intent;
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 690
    .end local v0    # "data":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->finish()V

    .line 694
    :goto_1
    return-void

    .line 683
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    sget v4, Lcom/eventgenie/android/R$string;->failed_to_post:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v2, v3, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 687
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/squareup/okhttp/Response;
    .locals 34
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 485
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v6, "associatedExhibitors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v9, "associatedSessions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v11, "associatedSubSessions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v10, "associatedSpeakers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v8, "associatedProducts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v7, "associatedPOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v5, "associatedDownloadables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v12, "associatedVisitors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->entityList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/eventgenie/android/container/EntityWrapper;

    .line 495
    .local v16, "entity":Lcom/eventgenie/android/container/EntityWrapper;
    sget-object v28, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$4;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    :pswitch_1
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :pswitch_2
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :pswitch_3
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :pswitch_4
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :pswitch_5
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :pswitch_6
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :pswitch_7
    invoke-interface/range {v16 .. v16}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 525
    .end local v16    # "entity":Lcom/eventgenie/android/container/EntityWrapper;
    :cond_0
    const-string v28, "image/png"

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v4

    .line 526
    .local v4, "MEDIA_TYPE_PNG":Lcom/squareup/okhttp/MediaType;
    new-instance v14, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v14}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 528
    .local v14, "client":Lcom/squareup/okhttp/OkHttpClient;
    new-instance v28, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct/range {v28 .. v28}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    sget-object v29, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual/range {v28 .. v29}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object v25

    .line 530
    .local v25, "requestBuilder":Lcom/squareup/okhttp/MultipartBuilder;
    const-string v17, "Content-Disposition"

    .line 531
    .local v17, "headerContent":Ljava/lang/String;
    const-string v18, "form-data; name=\"%s\""

    .line 532
    .local v18, "headerTemplate":Ljava/lang/String;
    const-string v19, "form-data; name=\"%s\"; filename=\"image.png\""

    .line 533
    .local v19, "headerTemplateWithFile":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_1

    .line 534
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedExhibitors"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 540
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_2

    .line 541
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedSessions"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 547
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_3

    .line 548
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedSubSessions"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 554
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_4

    .line 555
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedSpeakers"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 561
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_5

    .line 562
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedProducts"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 568
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_6

    .line 569
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedPOIs"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 575
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_7

    .line 576
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedDownloadables"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 582
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_8

    .line 583
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "associatedVisitors"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ","

    move-object/from16 v0, v30

    invoke-static {v0, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 589
    :cond_8
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/LinearLayout;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->llHorizontalGallery:Landroid/widget/LinearLayout;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/LinearLayout;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    sget v29, Lcom/eventgenie/android/R$id;->image:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 592
    .local v22, "iv":Landroid/widget/ImageView;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 593
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 594
    .local v27, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    check-cast v28, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 595
    .local v13, "bmp":Landroid/graphics/Bitmap;
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 596
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\"; filename=\"image.png\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "images"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 589
    .end local v13    # "bmp":Landroid/graphics/Bitmap;
    .end local v27    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 603
    .end local v22    # "iv":Landroid/widget/ImageView;
    :cond_a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ ActivityStreamPost MESSAGE_FIELD: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->etPost:Landroid/widget/EditText;
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/EditText;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 604
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "Content-Disposition"

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-string v30, "form-data; name=\"%s\""

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "message"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v28

    const-string/jumbo v29, "text/plain"

    invoke-static/range {v29 .. v29}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    move-object/from16 v30, v0

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->etPost:Landroid/widget/EditText;
    invoke-static/range {v30 .. v30}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/EditText;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 609
    invoke-virtual/range {v25 .. v25}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v24

    .line 610
    .local v24, "requestBody":Lcom/squareup/okhttp/RequestBody;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ ActivityStreamPost requestBody: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 611
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ ActivityStreamPost requestBody: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 612
    new-instance v28, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v28 .. v28}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->postUrl:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v23

    .line 623
    .local v23, "request":Lcom/squareup/okhttp/Request;
    :try_start_0
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 630
    :goto_2
    return-object v26

    .line 626
    :catch_0
    move-exception v15

    .line 627
    .local v15, "e":Ljava/io/IOException;
    const-string v28, "^ ActivityStreamPost response exception: "

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    const/16 v26, 0x0

    goto :goto_2

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 481
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->cancelDoingPostUI(Z)V

    .line 662
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 663
    return-void
.end method

.method protected onCancelled(Lcom/squareup/okhttp/Response;)V
    .locals 1
    .param p1, "result"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->cancelDoingPostUI(Z)V

    .line 668
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 669
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 481
    check-cast p1, Lcom/squareup/okhttp/Response;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->onCancelled(Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method protected onPostExecute(Lcom/squareup/okhttp/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->cancelDoingPostUI(Z)V

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ ActivityStreamPost response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->networkResponse()Lcom/squareup/okhttp/Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 640
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->etPost:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 657
    :goto_0
    return-void

    .line 644
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ ActivityStreamPost response error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 646
    const-string v3, "^ ActivityStreamPost response error headers: "

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 648
    .local v1, "headerName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ ActivityStreamPost response error header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 653
    .end local v1    # "headerName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 651
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ ActivityStreamPost response error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->cancelDoingPostUI(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 481
    check-cast p1, Lcom/squareup/okhttp/Response;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$DoPostAsyncTask;->onPostExecute(Lcom/squareup/okhttp/Response;)V

    return-void
.end method
