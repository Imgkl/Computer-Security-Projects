.class public abstract Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "LeaderboardBaseFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final PARAM_ENTITY:Ljava/lang/String; = "param_entity"

.field protected static final PARAM_ENTITY_ID:Ljava/lang/String; = "param_entity_id"

.field protected static final PARAM_NAMESPACE:Ljava/lang/String; = "param_namespace"


# instance fields
.field private mEntity:Ljava/lang/String;

.field private mEntityId:J

.field private mNamespace:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mEntity:Ljava/lang/String;

    return-object v0
.end method

.method protected getEntityId()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mEntityId:J

    return-wide v0
.end method

.method protected getmNamespace()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mNamespace:J

    return-wide v0
.end method

.method protected initLeaderboard()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param_entity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mEntity:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param_entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mEntityId:J

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param_namespace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mNamespace:J

    .line 58
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 75
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v11

    .line 77
    .local v11, "rowId":I
    sget v0, Lcom/eventgenie/android/R$string;->tag_leaderboard_visitor_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 79
    .local v8, "otherId":J
    sget v0, Lcom/eventgenie/android/R$id;->leaderboard_app_row:I

    if-ne v11, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "apps"

    iget-wide v4, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mEntityId:J

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getPlayerComparisorIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v10

    .line 88
    .local v10, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 115
    .end local v10    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-void

    .line 90
    :cond_0
    sget v0, Lcom/eventgenie/android/R$id;->leaderboard_game_row:I

    if-ne v11, v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "games"

    iget-wide v4, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->mEntityId:J

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getPlayerComparisorIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v10

    .line 100
    .restart local v10    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 113
    .end local v10    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
