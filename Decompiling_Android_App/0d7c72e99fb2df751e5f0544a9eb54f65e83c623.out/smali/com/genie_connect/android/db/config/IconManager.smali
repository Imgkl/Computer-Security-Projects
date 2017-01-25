.class public final Lcom/genie_connect/android/db/config/IconManager;
.super Ljava/lang/Object;
.source "IconManager.java"


# static fields
.field public static final DEFAULT_GRID_ICON:I

.field public static final DEFAULT_LIST_ICON:I

.field public static final DEFAULT_TAB_ICON:I

.field public static final ICOM_GM_MAP_ANNOTATION:Ljava/lang/String; = "ic_map_"

.field public static final ICON_GM_PREFIX_LIST:Ljava/lang/String; = "ic_gm_list_"

.field public static final ICON_GM_PREFIX_TAB:Ljava/lang/String; = "ic_gm_tab_"

.field public static final ICON_GM_TROPHY_PREFIX:Ljava/lang/String; = "ic_trophy_"

.field private static sDrawableLoader:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/eventgenie/android/R$drawable;->grid_icon_default:I

    sput v0, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_GRID_ICON:I

    .line 60
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_gm_list_info:I

    sput v0, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_LIST_ICON:I

    .line 61
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_info:I

    sput v0, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_TAB_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/genie_connect/android/db/config/IconManager;->getIconOverrideCacheKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearIconOverridesCache(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J

    .prologue
    .line 380
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2}, Lcom/genie_connect/android/db/config/IconManager;->getIconOverrideCacheKey(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 385
    .local v0, "imageLoader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->clearCache()V

    .line 386
    return-void
.end method

.method private static getCustomIcon(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "namespace"    # J

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_GRID_ICON:I

    invoke-static {v1, v2}, Lcom/genie_connect/android/db/config/IconManager;->reflectDrawable(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "res":I
    sget v1, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_GRID_ICON:I

    if-eq v0, v1, :cond_0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDrawables(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v9, ".R.drawable"

    invoke-static {v9}, Lcom/genie_connect/android/db/config/IconManager;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 81
    .local v8, "rClassDrawable":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 85
    .local v2, "drawableArray":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 87
    .local v1, "dr":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "dr":Ljava/lang/reflect/Field;
    :cond_1
    return-object v5

    .line 93
    .restart local v1    # "dr":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 92
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method protected static getFontColourColourId(Ljava/lang/String;I)I
    .locals 2
    .param p0, "iconSet"    # Ljava/lang/String;
    .param p1, "defaultId"    # I

    .prologue
    .line 101
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/genie_connect/android/db/config/IconMaps;->getFontColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    .local v0, "col":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 106
    .end local p1    # "defaultId":I
    :goto_0
    return p1

    .restart local p1    # "defaultId":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J
    .param p3, "iconName"    # Ljava/lang/String;
    .param p4, "iconSet"    # Ljava/lang/String;
    .param p5, "iconType"    # Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    .prologue
    .line 113
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v1, p5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-static {p0, p3, p1, p2}, Lcom/genie_connect/android/db/config/IconManager;->getCustomIcon(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    .local v0, "customIcon":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    .line 150
    .end local v0    # "customIcon":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 119
    .restart local v0    # "customIcon":Ljava/lang/Integer;
    :cond_0
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-static {p0, p4, p3}, Lcom/genie_connect/android/db/config/IconManager;->getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p5, p4}, Lcom/genie_connect/android/db/config/IconManager;->getIconUnderlay(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p5, p4, p3}, Lcom/genie_connect/android/db/config/IconManager;->getIconDrawableColourFilter(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 126
    .end local v0    # "customIcon":Ljava/lang/Integer;
    :cond_1
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v1, p5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-static {p1, p2}, Lcom/genie_connect/android/db/config/IconMaps;->isNamespaceOverridingListIcons(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_gm_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/genie_connect/android/db/config/IconManager;->getCustomIcon(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    .restart local v0    # "customIcon":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 130
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto :goto_0

    .line 132
    :cond_2
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-static {p0, p4, p3}, Lcom/genie_connect/android/db/config/IconManager;->getIconList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto :goto_0

    .line 135
    .end local v0    # "customIcon":Ljava/lang/Integer;
    :cond_3
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-static {p0, p4, p3}, Lcom/genie_connect/android/db/config/IconManager;->getIconList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {v1, p5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-static {p1, p2}, Lcom/genie_connect/android/db/config/IconMaps;->isNamespaceOverridingListIcons(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_gm_tab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/genie_connect/android/db/config/IconManager;->getCustomIcon(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    .restart local v0    # "customIcon":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 142
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto/16 :goto_0

    .line 144
    :cond_5
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-static {p0, p4, p3}, Lcom/genie_connect/android/db/config/IconManager;->getIconTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto/16 :goto_0

    .line 147
    .end local v0    # "customIcon":Ljava/lang/Integer;
    :cond_6
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    invoke-static {p0, p4, p3}, Lcom/genie_connect/android/db/config/IconManager;->getIconTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto/16 :goto_0

    .line 150
    :cond_7
    new-instance v1, Lcom/genie_connect/android/db/config/WidgetIcon;

    sget v2, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_LIST_ICON:I

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/WidgetIcon;-><init>(I)V

    goto/16 :goto_0
.end method

.method private static getIconDrawableColourFilter(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconType"    # Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .param p2, "iconSet"    # Ljava/lang/String;
    .param p3, "iconName"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p1, p2, p3}, Lcom/genie_connect/android/db/config/IconMaps;->getColorFilter(Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 157
    .local v0, "col":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;

    .prologue
    .line 165
    sget v0, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_GRID_ICON:I

    invoke-static {p0, p1, p2, v0}, Lcom/genie_connect/android/db/config/IconManager;->getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "defaultId"    # I

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/genie_connect/android/db/config/IconMaps;->isIconSetColourisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "line_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-string p1, "line_white"

    .line 179
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/genie_connect/android/db/config/IconManager;->reflectDrawable(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 172
    :cond_1
    const-string v0, "chunky_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string p1, "chunky_white"

    goto :goto_0

    .line 175
    :cond_2
    const-string/jumbo p1, "white"

    goto :goto_0
.end method

.method protected static getIconList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;

    .prologue
    .line 183
    sget v0, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_LIST_ICON:I

    invoke-static {p0, p1, p2, v0}, Lcom/genie_connect/android/db/config/IconManager;->getIconList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getIconList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "defaultIconId"    # I

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_gm_list_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/genie_connect/android/db/config/IconManager;->reflectDrawable(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 192
    .end local p3    # "defaultIconId":I
    :cond_0
    return p3
.end method

.method public static getIconOverrideBitmap(Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/utils/delegates/Delegates$Action;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lcom/genie_connect/android/utils/delegates/Delegates$Action",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p4, "callback":Lcom/genie_connect/android/utils/delegates/Delegates$Action;, "Lcom/genie_connect/android/utils/delegates/Delegates$Action<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/genie_connect/android/db/config/IconManager$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/genie_connect/android/db/config/IconManager$1;-><init>(Landroid/content/Context;JLcom/genie_connect/android/utils/delegates/Delegates$Action;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/IconManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    return-void
.end method

.method private static getIconOverrideCacheKey(J)Ljava/lang/String;
    .locals 2
    .param p0, "namespace"    # J

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DL_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getIconTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;

    .prologue
    .line 197
    sget v0, Lcom/genie_connect/android/db/config/IconManager;->DEFAULT_TAB_ICON:I

    invoke-static {p0, p1, p2, v0}, Lcom/genie_connect/android/db/config/IconManager;->getIconTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getIconTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "defaultIconId"    # I

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_gm_tab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/genie_connect/android/db/config/IconManager;->reflectDrawable(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 206
    .end local p3    # "defaultIconId":I
    :cond_0
    return p3
.end method

.method private static getIconUnderlay(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconType"    # Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .param p2, "iconSet"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1, p2}, Lcom/genie_connect/android/db/config/IconMaps;->getUnderlay(Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 216
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMappingAnnotationIconKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->getMappingAnnotationIconKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMappingIconAnnotation(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, Lcom/genie_connect/android/db/config/IconMaps;->getMappingIconAnnotation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespaceToUseForIcons(Landroid/content/Context;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 235
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v0

    .line 237
    .local v0, "isMultiEventActive":Z
    if-eqz v0, :cond_1

    .line 238
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    .line 240
    .local v2, "parentNamespace":J
    invoke-static {v2, v3}, Lcom/genie_connect/android/db/config/IconMaps;->isNamespaceOverridingChildIcons(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    move-wide v4, v2

    .line 251
    .end local v2    # "parentNamespace":J
    .local v4, "result":J
    :goto_0
    return-wide v4

    .line 243
    .end local v4    # "result":J
    .restart local v2    # "parentNamespace":J
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    .restart local v4    # "result":J
    goto :goto_0

    .line 247
    .end local v2    # "parentNamespace":J
    .end local v4    # "result":J
    :cond_1
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    .restart local v4    # "result":J
    goto :goto_0
.end method

.method private static getResourceClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p0, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/help/BuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".R"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 257
    .local v4, "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v6

    .line 259
    .local v6, "subClassTable":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 260
    .local v5, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "subClassTable":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    .line 259
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "subClassTable":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "rClassBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "subClassTable":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ICON: getResourceClass() ClassNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 269
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ICON: getResourceClass() Unable to find Sublass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 271
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v9, ".R.string"

    invoke-static {v9}, Lcom/genie_connect/android/db/config/IconManager;->getResourceClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 279
    .local v7, "rBaseCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 283
    .local v8, "strings":[Ljava/lang/reflect/Field;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 285
    .local v1, "dr":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 287
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "dr":Ljava/lang/reflect/Field;
    :cond_1
    return-object v4

    .line 291
    .restart local v1    # "dr":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 290
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method public static getTrophyIconResource(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_trophy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/genie_connect/android/db/config/IconManager;->reflectDrawable(Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "res":I
    if-ne v0, v3, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-static {p0}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->getInstance(Landroid/content/Context;)Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconManager;->sDrawableLoader:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    .line 316
    return-void
.end method

.method public static logSubClasses(Ljava/lang/String;)V
    .locals 9
    .param p0, "baseClass"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ICON: getSubClasses() Getting subclasses for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ============= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 323
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 324
    .local v4, "rClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v5

    .line 325
    .local v5, "subClassTable":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 326
    .local v6, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ICON: getSubClasses() Class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "rClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "subClassTable":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ ICON: getSubClasses() Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private static reflectDrawable(Ljava/lang/String;I)I
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 335
    sget-object v0, Lcom/genie_connect/android/db/config/IconManager;->sDrawableLoader:Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;

    invoke-virtual {v0, p0, p1}, Lco/uk/alt236/reflectivedrawableloader/ReflectiveDrawableLoader;->getDrawableId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
