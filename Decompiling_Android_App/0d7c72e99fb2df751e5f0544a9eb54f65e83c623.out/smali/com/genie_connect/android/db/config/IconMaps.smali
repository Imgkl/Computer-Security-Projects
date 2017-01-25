.class public final Lcom/genie_connect/android/db/config/IconMaps;
.super Ljava/lang/Object;
.source "IconMaps.java"


# static fields
.field private static final COLOUR_MAP_FONT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLOUR_MAP_ICONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLOUR_MAP_UNDERLAY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENTS_OVERRIDING_CHILD_ICONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENTS_OVERRIDING_LIST_ICONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_SET_BG_BLUE:Ljava/lang/String; = "bg_blue"

.field public static final ICON_SET_BG_CYAN:Ljava/lang/String; = "bg_cyan"

.field public static final ICON_SET_BG_GREY:Ljava/lang/String; = "bg_grey"

.field public static final ICON_SET_BG_NAVY:Ljava/lang/String; = "bg_navy"

.field public static final ICON_SET_BG_PREFIX:Ljava/lang/String; = "bg_"

.field public static final ICON_SET_BLACK:Ljava/lang/String; = "black"

.field public static final ICON_SET_BLUE:Ljava/lang/String; = "blue"

.field public static final ICON_SET_CHUNKY_BLACK:Ljava/lang/String; = "chunky_black"

.field public static final ICON_SET_CHUNKY_BLUE:Ljava/lang/String; = "chunky_blue"

.field public static final ICON_SET_CHUNKY_GREEN:Ljava/lang/String; = "chunky_green"

.field public static final ICON_SET_CHUNKY_LIME:Ljava/lang/String; = "chunky_lime"

.field public static final ICON_SET_CHUNKY_ORANGE:Ljava/lang/String; = "chunky_orange"

.field public static final ICON_SET_CHUNKY_PREFIX:Ljava/lang/String; = "chunky_"

.field public static final ICON_SET_CHUNKY_PURPLE:Ljava/lang/String; = "chunky_purple"

.field public static final ICON_SET_CHUNKY_RED:Ljava/lang/String; = "chunky_red"

.field public static final ICON_SET_CHUNKY_SILVER:Ljava/lang/String; = "chunky_silver"

.field public static final ICON_SET_CHUNKY_WHITE:Ljava/lang/String; = "chunky_white"

.field public static final ICON_SET_GREEN:Ljava/lang/String; = "green"

.field public static final ICON_SET_LIME:Ljava/lang/String; = "lime"

.field public static final ICON_SET_LINE_BLACK:Ljava/lang/String; = "line_black"

.field public static final ICON_SET_LINE_BLUE:Ljava/lang/String; = "line_blue"

.field public static final ICON_SET_LINE_GREEN:Ljava/lang/String; = "line_green"

.field public static final ICON_SET_LINE_LIME:Ljava/lang/String; = "line_lime"

.field public static final ICON_SET_LINE_ORANGE:Ljava/lang/String; = "line_orange"

.field public static final ICON_SET_LINE_PREFIX:Ljava/lang/String; = "line_"

.field public static final ICON_SET_LINE_PURPLE:Ljava/lang/String; = "line_purple"

.field public static final ICON_SET_LINE_RED:Ljava/lang/String; = "line_red"

.field public static final ICON_SET_LINE_SILVER:Ljava/lang/String; = "line_silver"

.field public static final ICON_SET_LINE_WHITE:Ljava/lang/String; = "line_white"

.field public static final ICON_SET_ORANGE:Ljava/lang/String; = "orange"

.field public static final ICON_SET_PURPLE:Ljava/lang/String; = "purple"

.field public static final ICON_SET_RED:Ljava/lang/String; = "red"

.field public static final ICON_SET_SILVER:Ljava/lang/String; = "silver"

.field public static final ICON_SET_WHITE:Ljava/lang/String; = "white"

.field private static final MAP_ICON_ANNOTATIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_COLORISABLE_CHUCKY_ICONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateFontColourMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_FONT:Ljava/util/Map;

    .line 86
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateIconColourMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_ICONS:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateUnderlayColourMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_UNDERLAY:Ljava/util/Map;

    .line 89
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateEventsOverridingListIcons()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->EVENTS_OVERRIDING_LIST_ICONS:Ljava/util/Set;

    .line 90
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateEventsOverridingChildIcons()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->EVENTS_OVERRIDING_CHILD_ICONS:Ljava/util/Set;

    .line 91
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateMapIconAnnotationMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->MAP_ICON_ANNOTATIONS:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/genie_connect/android/db/config/IconMaps;->populateNonColourisableChynkyIcons()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/IconMaps;->NON_COLORISABLE_CHUCKY_ICONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getColorFilter(Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "iconType"    # Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .param p1, "iconSet"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-object v1, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    if-ne v1, p0, :cond_0

    .line 97
    if-eqz p1, :cond_2

    const-string v1, "chunky_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Lcom/genie_connect/android/db/config/IconMaps;->NON_COLORISABLE_CHUCKY_ICONS:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_ICONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 104
    :cond_2
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_ICONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected static getFontColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "iconType"    # Ljava/lang/String;
    .param p1, "iconSet"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_FONT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_FONT:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getMappingAnnotationIconKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    sget-object v2, Lcom/genie_connect/android/db/config/IconMaps;->MAP_ICON_ANNOTATIONS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 325
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/SetUtils;->convertStringSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "result":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 328
    return-object v1
.end method

.method protected static getMappingIconAnnotation(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->MAP_ICON_ANNOTATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getUnderlay(Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "iconType"    # Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;
    .param p1, "iconSet"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    if-ne v0, p0, :cond_0

    .line 135
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->COLOUR_MAP_UNDERLAY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isIconSetColourisable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconSet"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const-string/jumbo v1, "white"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string v1, "line_white"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "chunky_white"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static isNamespaceOverridingChildIcons(J)Z
    .locals 2
    .param p0, "namespace"    # J

    .prologue
    .line 159
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->EVENTS_OVERRIDING_CHILD_ICONS:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isNamespaceOverridingListIcons(J)Z
    .locals 2
    .param p0, "namespace"    # J

    .prologue
    .line 163
    sget-object v0, Lcom/genie_connect/android/db/config/IconMaps;->EVENTS_OVERRIDING_LIST_ICONS:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static populateEventsOverridingChildIcons()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/32 v2, 0x8adaeb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-wide v2, 0x141ec9c7800000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static populateEventsOverridingListIcons()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/32 v2, 0x8adaeb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    const-wide v2, 0x179ef41aa00000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static populateFontColourMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "black"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_black:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "line_black"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_black:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "chunky_black"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_black:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v1, "white"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_white:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "line_white"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_white:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "chunky_white"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_white:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "red"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_red:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "line_red"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_red:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "chunky_red"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_red:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "line_blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "chunky_blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "silver"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_silver:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "line_silver"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_silver:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "chunky_silver"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_silver:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "green"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_green:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "line_green"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_green:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "chunky_green"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_green:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "purple"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_purple:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "line_purple"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_purple:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "chunky_purple"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_purple:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "lime"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_lime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "line_lime"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_lime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "chunky_lime"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_lime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "orange"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_orange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "line_orange"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_orange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "chunky_orange"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_orange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "bg_blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_bg_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "bg_cyan"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_bg_cyan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "bg_navy"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_bg_navy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "bg_grey"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_bg_gray:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static populateIconColourMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "black"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_black:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "line_black"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_black:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "chunky_black"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_black:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "red"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_red:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "line_red"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_red:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "chunky_red"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_red:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "line_blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "chunky_blue"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "green"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_green:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "line_green"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_green:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "chunky_green"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_green:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "purple"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_purple:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "line_purple"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_purple:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "chunky_purple"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_purple:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "lime"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_lime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "line_lime"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_lime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "chunky_lime"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_lime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "orange"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_orange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "line_orange"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_orange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "chunky_orange"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_orange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "silver"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_silver:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "line_silver"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_silver:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "chunky_silver"

    sget v2, Lcom/eventgenie/android/R$color;->icon_set_silver:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static populateMapIconAnnotationMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "{arrow_n}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v1, "{arrow_ne}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_ne:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v1, "{arrow_e}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v1, "{arrow_se}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_se:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v1, "{arrow_s}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v1, "{arrow_sw}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_sw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "{arrow_w}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "{arrow_nw}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_arrow_nw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v1, "{toilet_f}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_toilet_f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v1, "{toilet_m}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_toilet_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "{toilet_u}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_toilet_u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v1, "{toilet_d}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_toilet_d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "{baby_changing}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_baby_changing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v1, "{exit}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_exit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v1, "{elevator}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_elevator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v1, "{elevator_d}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_elevator_d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v1, "{escalator}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_escalator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v1, "{escalator_up}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_escalator_up:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v1, "{escalator_down}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_escalator_down:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v1, "{ramp_d}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_ramp_d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v1, "{fire_exit}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_fire_exit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v1, "{no_entry}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_no_entry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v1, "{info_point}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_info_point:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v1, "{firstaid}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_firstaid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v1, "{dining}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_dining:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v1, "{coffee}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_coffee:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v1, "{bar}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_bar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v1, "{cloakroom}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_cloakroom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v1, "{water_fountain}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_water_fountain:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v1, "{telephone}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_telephone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v1, "{nfc}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_nfc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v1, "{wifi}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_wifi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v1, "{atm}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_atm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v1, "{area_smoking}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_area_smoking:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v1, "{area_meeting}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_area_meeting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v1, "{area_vip}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_area_vip:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v1, "{area_waiting}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_area_waiting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v1, "{area_parking}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_area_parking:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v1, "{point_meeting}"

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_map_point_meeting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static populateNonColourisableChynkyIcons()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "facebook"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v1, "flickr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v1, "linkedin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v1, "twitter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v1, "youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v1, "googleplus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v1, "pinterest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    const-string/jumbo v1, "tumblr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static populateUnderlayColourMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "bg_blue"

    sget v2, Lcom/eventgenie/android/R$drawable;->rounded_rect_bg_blue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "bg_grey"

    sget v2, Lcom/eventgenie/android/R$drawable;->rounded_rect_bg_gray:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "bg_cyan"

    sget v2, Lcom/eventgenie/android/R$drawable;->rounded_rect_bg_cyan:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v1, "bg_navy"

    sget v2, Lcom/eventgenie/android/R$drawable;->rounded_rect_bg_navy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
