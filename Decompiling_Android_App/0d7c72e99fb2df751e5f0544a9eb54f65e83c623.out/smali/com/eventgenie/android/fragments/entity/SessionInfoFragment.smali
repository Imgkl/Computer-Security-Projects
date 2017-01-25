.class public Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;
.super Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;
.source "SessionInfoFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    sget v19, Lcom/eventgenie/android/R$layout;->details_session_holo:I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v19

    const-class v20, Lcom/genie_connect/common/db/model/Session;

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/genie_connect/common/db/model/Session;

    .line 79
    .local v15, "session":Lcom/genie_connect/common/db/model/Session;
    iget-object v0, v15, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 80
    .local v8, "id":J
    iget-object v4, v15, Lcom/genie_connect/common/db/model/Session;->fullDescription:Ljava/lang/String;

    .line 81
    .local v4, "details":Ljava/lang/String;
    iget-object v0, v15, Lcom/genie_connect/common/db/model/Session;->track:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 82
    .local v16, "track":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v12, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isInteractiveMapsAvailable()Z

    move-result v14

    .line 86
    .local v14, "mapsEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v19

    sget-object v20, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v21, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual/range {v19 .. v21}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, "trackLabel":Ljava/lang/String;
    iget-object v10, v15, Lcom/genie_connect/common/db/model/Session;->location:Ljava/lang/String;

    .line 91
    .local v10, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->info_header:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    sget v20, Lcom/eventgenie/android/R$string;->session_info:I

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcom/genie_connect/android/db/access/DbSessions;->getSessionLocations(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v11

    .line 99
    .local v11, "locationCursor":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v11, :cond_2

    .line 103
    :goto_0
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_1

    .line 104
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "locationName":Ljava/lang/String;
    const-string v19, "map"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 107
    .local v6, "hallId":J
    invoke-static {v13}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 108
    new-instance v19, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 114
    .end local v6    # "hallId":J
    .end local v13    # "locationName":Ljava/lang/String;
    :cond_1
    invoke-static {v11}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 116
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 117
    const/4 v10, 0x0

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v14, v1}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->addMapLocations(Ljava/util/List;ZLandroid/view/View;)V

    .line 124
    :cond_2
    if-eqz v16, :cond_3

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->track:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 126
    .local v18, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_3
    if-eqz v17, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->track_label:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 130
    .restart local v18    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 134
    .restart local v18    # "tv":Landroid/widget/TextView;
    if-eqz v10, :cond_6

    .line 135
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Lcom/eventgenie/android/R$string;->session_room_formatter:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_1
    if-nez v10, :cond_5

    if-nez v16, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->location_track_container:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->info_header:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->details_header:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 152
    .local v5, "detailsHeader":Landroid/view/View;
    sget v19, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v5, v0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "tv":Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 156
    .restart local v18    # "tv":Landroid/widget/TextView;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 157
    const-string v19, "\n"

    const-string v20, "<br>"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    new-instance v21, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct/range {v21 .. v21}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static/range {v19 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    return-object v19

    .line 139
    .end local v5    # "detailsHeader":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/entity/SessionInfoFragment;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    sget v20, Lcom/eventgenie/android/R$id;->location_container:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 161
    .restart local v5    # "detailsHeader":Landroid/view/View;
    :cond_7
    sget v19, Lcom/eventgenie/android/R$string;->description_not_available:I

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
