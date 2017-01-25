.class Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;
.super Landroid/os/AsyncTask;
.source "Map2DActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/mapping/Map2DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncMapDataLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
        "Landroid/widget/AbsoluteLayout$LayoutParams;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1252
    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p2, "x1"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1046
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 36
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
            "Landroid/widget/AbsoluteLayout$LayoutParams;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1052
    .local v21, "naviPointMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .local v27, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;>;"
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowNavigationGrid()Z

    move-result v26

    .line 1064
    .local v26, "showNaviGrid":Z
    const/4 v8, 0x0

    .line 1065
    .local v8, "btnId":I
    const-wide/16 v10, -0x1

    .line 1067
    .local v10, "hallFilterId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;
    invoke-static/range {v28 .. v29}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$902(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->resetValues()V
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1000(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/Datastore;->clearTemporaryData()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->isMapItemsEmpty()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1079
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    new-instance v29, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    invoke-direct/range {v29 .. v29}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;-><init>()V

    invoke-virtual/range {v28 .. v29}, Lcom/genie_connect/android/db/datastore/Datastore;->setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V

    .line 1080
    new-instance v23, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v23, "parser":Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    const-wide/16 v32, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;->parse(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/genie_connect/android/db/datastore/Datastore;->setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V

    .line 1091
    .end local v23    # "parser":Lcom/eventgenie/android/mapping/d2/parsers/Map2dDataParser;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v28

    if-nez v28, :cond_3

    .line 1092
    const/16 v27, 0x0

    .line 1209
    .end local v27    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;>;"
    :cond_2
    :goto_0
    return-object v27

    .line 1096
    .restart local v27    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1097
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v10

    .line 1099
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ Hall filterID = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", collection size: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemCount()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 1101
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1102
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 1103
    .local v22, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 1105
    .local v19, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v26, :cond_5

    .line 1106
    move-object/from16 v0, v19

    invoke-static {v0, v10, v11}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isThisFromThisHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1107
    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1108
    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->isDrawable()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1115
    move-object/from16 v0, v19

    invoke-static {v0, v10, v11}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isThisFromThisHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v9, v19

    .line 1116
    check-cast v9, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    .line 1118
    .local v9, "drawableItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->isValidShape()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1120
    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getType()I

    move-result v28

    const/16 v29, 0x33

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 1121
    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxX()D

    move-result-wide v28

    const-wide v30, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v28, v28, v30

    if-gez v28, :cond_6

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxX()D

    move-result-wide v28

    const-wide/16 v30, 0x1

    cmpl-double v28, v28, v30

    if-lez v28, :cond_6

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1200(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)D

    move-result-wide v30

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxX()D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D
    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1202(Lcom/eventgenie/android/activities/mapping/Map2DActivity;D)D

    .line 1125
    :cond_6
    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxY()D

    move-result-wide v28

    const-wide v30, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v28, v28, v30

    if-gez v28, :cond_7

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxY()D

    move-result-wide v28

    const-wide/16 v30, 0x1

    cmpl-double v28, v28, v30

    if-lez v28, :cond_7

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)D

    move-result-wide v30

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMaxY()D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D
    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1302(Lcom/eventgenie/android/activities/mapping/Map2DActivity;D)D

    .line 1130
    :cond_7
    new-instance v18, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getWidth()D

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v30, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static/range {v30 .. v30}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getHeight()D

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v29, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static/range {v29 .. v29}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v29

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX()D

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v32, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static/range {v32 .. v32}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY()D

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v31, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F
    invoke-static/range {v31 .. v31}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1137
    .local v18, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getType()I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 1138
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ MAP2D: UNDERLAY: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 1141
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->createMapItemView(Landroid/content/Context;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    move-result-object v20

    .line 1143
    .local v20, "mapItemView":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getItemType()I

    move-result v28

    if-eqz v28, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getItemType()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 1145
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v30, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    invoke-static/range {v30 .. v30}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    move-result-object v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v20

    move-object/from16 v3, v30

    invoke-static {v0, v1, v9, v2, v3}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    :goto_2
    add-int/lit16 v0, v8, 0x3e8

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setId(I)V

    .line 1161
    add-int/lit8 v8, v8, 0x1

    .line 1163
    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getType()I

    move-result v28

    const/16 v29, 0x33

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Ljava/util/Map;

    move-result-object v28

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getNaviId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :goto_3
    new-instance v28, Landroid/util/Pair;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1153
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getItemType()I

    move-result v28

    const/16 v29, 0x33

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1156
    :cond_b
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setFocusable(Z)V

    .line 1157
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setClickable(Z)V

    goto :goto_2

    .line 1167
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Ljava/util/Map;

    move-result-object v28

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getMapId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1174
    .end local v18    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v20    # "mapItemView":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    :cond_d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ Item is not a valid shape: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1180
    .end local v9    # "drawableItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .end local v19    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v22    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    :cond_e
    new-instance v28, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader$MapItemComparator;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    invoke-static/range {v27 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1182
    if-eqz v26, :cond_2

    .line 1183
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1184
    .local v17, "lineSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 1190
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1191
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 1192
    .local v24, "point":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual/range {v24 .. v24}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviCoordinates()Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v25

    .line 1194
    .local v25, "pointCoords":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    invoke-virtual/range {v24 .. v24}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getAdjacencies()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1195
    .local v6, "adjKey":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 1197
    .local v7, "adjPoint":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v7, :cond_10

    .line 1198
    new-instance v28, Landroid/util/Pair;

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviCoordinates()Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1206
    .end local v6    # "adjKey":Ljava/lang/String;
    .end local v7    # "adjPoint":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "point":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v25    # "pointCoords":Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    move-object/from16 v28, v0

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setNavigationGrid(Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1046
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/eventgenie/android/ui/mapping2d/MapItemView;",
            "Landroid/widget/AbsoluteLayout$LayoutParams;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;>;"
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    const-string v3, ""

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1802(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1216
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1217
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    sget v4, Lcom/eventgenie/android/R$id;->map2d_absolutelayout:I

    invoke-virtual {v2, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    # setter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static {v3, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1702(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    .line 1218
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setHallId(J)V

    .line 1220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1221
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;"
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-result-object v4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2, v3}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/eventgenie/android/ui/mapping2d/MapItemView;Landroid/widget/AbsoluteLayout$LayoutParams;>;"
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    sget v3, Lcom/eventgenie/android/R$string;->no_map_data_found:I

    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v2, v3, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 1226
    const-string v2, "^ MAP2D: The MapItems collection is blank! Will not plot..."

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 1227
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->finish()V

    .line 1230
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V

    .line 1231
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->removeDialog(I)V

    .line 1233
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideOverlay()V

    .line 1235
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isCompatibility()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1236
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getX()F

    move-result v3

    float-to-double v4, v3

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getY()F

    move-result v3

    float-to-double v6, v3

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnUnscaledPoint(DD)V
    invoke-static {v2, v4, v5, v6, v7}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2000(Lcom/eventgenie/android/activities/mapping/Map2DActivity;DD)V

    .line 1241
    :goto_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J

    move-result-wide v4

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setActivityTitle(J)V
    invoke-static {v2, v4, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2200(Lcom/eventgenie/android/activities/mapping/Map2DActivity;J)V

    .line 1242
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showNavigation(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V

    .line 1243
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static {v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->invalidate()V

    .line 1244
    return-void

    .line 1238
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnLocation(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$2100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    # getter for: Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    invoke-static {v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->removeAllViews()V

    .line 1249
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;->this$0:Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialog(I)V

    .line 1250
    return-void
.end method
