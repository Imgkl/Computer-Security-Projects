.class public Lcom/eventgenie/android/activities/mapping/RouteActivity;
.super Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;
.source "RouteActivity.java"


# static fields
.field public static final DIRECTION_EXTRA:Ljava/lang/String; = "tofrom"

.field public static final EXHIBITOR_ID_EXTRA:Ljava/lang/String; = "ex_id"

.field public static final EXHIBITOR_NAME_EXTRA:Ljava/lang/String; = "ex_name"

.field private static final ID_MY_LOCATION:I = -0x2

.field private static final ID_NONE:I = -0x1

.field public static final MY_LOCATION_EXTRA:Ljava/lang/String; = "mylocation"

.field public static final RESULT_FROM:Ljava/lang/String; = "from"

.field public static final RESULT_TO:Ljava/lang/String; = "to"

.field public static final RETURN_CODE_FROM:I = 0x0

.field public static final RETURN_CODE_TO:I = 0x1


# instance fields
.field private mFromId:J

.field private mFromLocation:Ljava/lang/String;

.field private mFromName:Ljava/lang/String;

.field private mIgnoreLocationFound:Z

.field private mToId:J

.field private mToLocation:Ljava/lang/String;

.field private mToName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;-><init>()V

    .line 65
    iput-wide v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    .line 69
    iput-wide v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToId:J

    return-void
.end method

.method private getFromText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->useEmsp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->hasLastKnownPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget v0, Lcom/eventgenie/android/R$string;->map_route_my_location:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget v0, Lcom/eventgenie/android/R$string;->map_from_default:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromName:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateLabels()V
    .locals 6

    .prologue
    .line 76
    sget v2, Lcom/eventgenie/android/R$id;->planroute_from_label:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, "from":Landroid/widget/TextView;
    sget v2, Lcom/eventgenie/android/R$id;->planroute_to_label:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, "to":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getFromText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 81
    :cond_0
    sget v2, Lcom/eventgenie/android/R$string;->map_to_default:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, -0x1

    .line 105
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 106
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "b":Landroid/os/Bundle;
    if-nez p1, :cond_1

    .line 108
    const-string v1, "ex_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    .line 109
    const-string v1, "entity_location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromLocation:Ljava/lang/String;

    .line 110
    const-string v1, "ex_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromName:Ljava/lang/String;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mIgnoreLocationFound:Z

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->updateLabels()V

    .line 120
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 113
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_1
    const-string v1, "ex_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToId:J

    .line 114
    const-string v1, "entity_location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToLocation:Ljava/lang/String;

    .line 115
    const-string v1, "ex_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    .line 124
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget v6, Lcom/eventgenie/android/R$layout;->plan_route:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->map_menu_route:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    sget v6, Lcom/eventgenie/android/R$id;->details_label:I

    sget v7, Lcom/eventgenie/android/R$string;->map_path:I

    invoke-static {v6, v7, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 131
    sget v6, Lcom/eventgenie/android/R$id;->btn_myLocation:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->useEmsp()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 136
    sget v6, Lcom/eventgenie/android/R$id;->planroute_from:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 137
    .local v2, "fromLayout":Landroid/widget/LinearLayout;
    sget v6, Lcom/eventgenie/android/R$id;->planroute_to:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 139
    .local v5, "toLayout":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/eventgenie/android/activities/mapping/RouteActivity$1;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity$1;-><init>(Lcom/eventgenie/android/activities/mapping/RouteActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v6, Lcom/eventgenie/android/activities/mapping/RouteActivity$2;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity$2;-><init>(Lcom/eventgenie/android/activities/mapping/RouteActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, "suppliedFromValue":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 158
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v6, "tofrom"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "direction":I
    if-nez v1, :cond_4

    .line 162
    const-string v6, "ex_id"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    .line 163
    const-string v6, "entity_location"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromLocation:Ljava/lang/String;

    .line 164
    const-string v6, "ex_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromName:Ljava/lang/String;

    .line 165
    const/4 v4, 0x1

    .line 173
    .end local v1    # "direction":I
    :cond_0
    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->useEmsp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->hasLastKnownPosition()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    const-wide/16 v6, -0x2

    iput-wide v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->lookupLocation()V

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->updateLabels()V

    .line 183
    return-void

    .line 131
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "fromLayout":Landroid/widget/LinearLayout;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "suppliedFromValue":Z
    .end local v5    # "toLayout":Landroid/widget/LinearLayout;
    :cond_3
    const/16 v6, 0x8

    goto :goto_0

    .line 167
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "direction":I
    .restart local v2    # "fromLayout":Landroid/widget/LinearLayout;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "suppliedFromValue":Z
    .restart local v5    # "toLayout":Landroid/widget/LinearLayout;
    :cond_4
    const-string v6, "ex_id"

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToId:J

    .line 168
    const-string v6, "entity_location"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToLocation:Ljava/lang/String;

    .line 169
    const-string v6, "ex_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onDisplayRouteClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, -0x1

    .line 217
    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 218
    :cond_0
    sget v2, Lcom/eventgenie/android/R$string;->map_route_invalid:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 239
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "b":Landroid/os/Bundle;
    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 227
    const-string v2, "from"

    const-string v3, "mylocation"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    const-string/jumbo v2, "to"

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mToLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->finish()V

    goto :goto_0

    .line 229
    :cond_2
    const-string v2, "from"

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLocationFound(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 8
    .param p1, "payload"    # Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    .prologue
    const/4 v6, 0x1

    .line 200
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mIgnoreLocationFound:Z

    if-nez v3, :cond_0

    .line 201
    const-wide/16 v4, -0x2

    iput-wide v4, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mFromId:J

    .line 202
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->updateLabels()V

    .line 204
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getInstance(Landroid/content/Context;)Lcom/eventgenie/android/utils/social/StatusDateUtils;

    move-result-object v2

    .line 205
    .local v2, "statusUtils":Lcom/eventgenie/android/utils/social/StatusDateUtils;
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getTimestampForLastKnownPosition()J

    move-result-wide v0

    .line 207
    .local v0, "lastKnownTime":J
    sget v3, Lcom/eventgenie/android/R$string;->emsp_found_location_format:I

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v1, v6}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getTimeDiffString(JZ)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v3, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 213
    .end local v0    # "lastKnownTime":J
    .end local v2    # "statusUtils":Lcom/eventgenie/android/utils/social/StatusDateUtils;
    :cond_0
    return-void
.end method

.method public onMyLocationClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/mapping/RouteActivity;->mIgnoreLocationFound:Z

    .line 192
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/RouteActivity;->lookupLocation()V

    .line 193
    return-void
.end method
