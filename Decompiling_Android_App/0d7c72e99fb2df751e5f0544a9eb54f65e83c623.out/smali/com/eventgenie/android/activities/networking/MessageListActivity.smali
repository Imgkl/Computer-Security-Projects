.class public Lcom/eventgenie/android/activities/networking/MessageListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "MessageListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;
    }
.end annotation


# static fields
.field public static final FILTER_TYPE_ALERTS:I = 0x3

.field public static final FILTER_TYPE_EXTRA:Ljava/lang/String; = "filter_type"

.field public static final FILTER_TYPE_INBOX:I = 0x1

.field public static final FILTER_TYPE_SENT:I = 0x2


# instance fields
.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mFilterType:I

.field private mLatestMessageTime:Ljava/lang/String;

.field private mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mFilterType:I

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/MessageListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/MessageListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mLatestMessageTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/networking/MessageListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/MessageListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mLatestMessageTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/MessageListActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method private populateUI()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget v2, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mFilterType:I

    invoke-static {p0, v0, v1, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getMessagesAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;I)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    return-void
.end method


# virtual methods
.method public hideIndicator()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/networking/MyInboxActivity;

    .line 71
    .local v0, "parentActivity":Lcom/eventgenie/android/activities/networking/MyInboxActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->showIndicator(Z)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v5, Lcom/eventgenie/android/R$layout;->generic_list_advertisment_bottom:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->setContentView(I)V

    .line 79
    sget v5, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "actionBar":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .local v1, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const-string v5, "filter_type"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mFilterType:I

    .line 91
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    .line 94
    .local v2, "tmp":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 95
    const/4 v4, 0x0

    .line 103
    .end local v2    # "tmp":J
    .local v4, "userId":Ljava/lang/Long;
    :goto_0
    iget v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mFilterType:I

    packed-switch v5, :pswitch_data_0

    .line 114
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/genie_connect/android/db/access/Udm;->messagesGet(Ljava/lang/Long;Ljava/lang/Integer;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 118
    :goto_1
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/Udm;->getMessageLastSyncedTimestamp()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mLatestMessageTime:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->populateUI()V

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyInbox()Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 122
    return-void

    .line 97
    .end local v4    # "userId":Ljava/lang/Long;
    .restart local v2    # "tmp":J
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .restart local v4    # "userId":Ljava/lang/Long;
    goto :goto_0

    .line 100
    .end local v2    # "tmp":J
    .end local v4    # "userId":Ljava/lang/Long;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "userId":Ljava/lang/Long;
    goto :goto_0

    .line 105
    :pswitch_0
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/genie_connect/android/db/access/Udm;->messagesGetForInbox(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_1

    .line 108
    :pswitch_1
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/genie_connect/android/db/access/Udm;->messagesGetForOutbox(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_1

    .line 111
    :pswitch_2
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/genie_connect/android/db/access/Udm;->messagesGet(Ljava/lang/Long;Ljava/lang/Integer;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->close(Landroid/database/Cursor;)V

    .line 127
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v1, 0x0

    invoke-static {p0, v0, p4, p5, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 133
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->refreshMessages()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->requery(Landroid/database/Cursor;)V

    .line 143
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onResume()V

    .line 144
    return-void
.end method

.method public refreshMessages()V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->showIndicator()V

    .line 163
    new-instance v0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;-><init>(Lcom/eventgenie/android/activities/networking/MessageListActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public showIndicator()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/networking/MyInboxActivity;

    .line 172
    .local v0, "parentActivity":Lcom/eventgenie/android/activities/networking/MyInboxActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->showIndicator(Z)V

    .line 173
    return-void
.end method
