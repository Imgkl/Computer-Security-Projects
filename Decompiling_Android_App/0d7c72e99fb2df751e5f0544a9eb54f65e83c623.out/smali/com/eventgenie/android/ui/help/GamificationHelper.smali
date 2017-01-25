.class public Lcom/eventgenie/android/ui/help/GamificationHelper;
.super Ljava/lang/Object;
.source "GamificationHelper.java"


# static fields
.field private static final PERCENT_SYMBOL:Ljava/lang/String; = "%"

.field private static final POINTS_STRING_FORMATTER:Ljava/lang/String; = "%d%% (%d)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static normalise(JJJJJ)I
    .locals 12
    .param p0, "dataHigh"    # J
    .param p2, "dataLow"    # J
    .param p4, "normHigh"    # J
    .param p6, "normLow"    # J
    .param p8, "x"    # J

    .prologue
    .line 46
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 47
    :goto_0
    return v2

    :cond_0
    new-instance v3, Lcom/eventgenie/android/utils/math/NormUtil;

    long-to-double v4, p0

    long-to-double v6, p2

    move-wide/from16 v0, p4

    long-to-double v8, v0

    move-wide/from16 v0, p6

    long-to-double v10, v0

    invoke-direct/range {v3 .. v11}, Lcom/eventgenie/android/utils/math/NormUtil;-><init>(DDDD)V

    move-wide/from16 v0, p8

    long-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/utils/math/NormUtil;->normalize(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method public static setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JI)V
    .locals 3
    .param p0, "bar"    # Lcom/eventgenie/android/ui/other/TextProgressBar;
    .param p1, "progress"    # J
    .param p3, "color"    # I

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JILjava/lang/String;)V
    .locals 1
    .param p0, "bar"    # Lcom/eventgenie/android/ui/other/TextProgressBar;
    .param p1, "progress"    # J
    .param p3, "color"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p3}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setProgressbarColour(I)V

    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setTextColor(I)V

    .line 59
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setProgressAnimated(I)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JJI)V
    .locals 17
    .param p0, "bar"    # Lcom/eventgenie/android/ui/other/TextProgressBar;
    .param p1, "progress"    # J
    .param p3, "maxPoints"    # J
    .param p5, "color"    # I

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 65
    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v10, p1

    invoke-static/range {v2 .. v11}, Lcom/eventgenie/android/ui/help/GamificationHelper;->normalise(JJJJJ)I

    move-result v14

    .line 72
    .local v14, "normProgress":I
    cmp-long v2, p1, p3

    if-lez v2, :cond_1

    move-wide/from16 v12, p3

    .line 74
    .local v12, "normPoints":J
    :goto_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d%% (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "value":Ljava/lang/String;
    int-to-long v2, v14

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v2, v3, v1, v15}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JILjava/lang/String;)V

    goto :goto_0

    .end local v12    # "normPoints":J
    .end local v15    # "value":Ljava/lang/String;
    :cond_1
    move-wide/from16 v12, p1

    .line 72
    goto :goto_1
.end method

.method public static setupProgressbarForGame(Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/genie_connect/android/db/access/GameStore;J)V
    .locals 8
    .param p0, "bar"    # Lcom/eventgenie/android/ui/other/TextProgressBar;
    .param p1, "store"    # Lcom/genie_connect/android/db/access/GameStore;
    .param p2, "gameId"    # J

    .prologue
    .line 84
    invoke-virtual {p1, p2, p3}, Lcom/genie_connect/android/db/access/GameStore;->getMyScoreForGame(J)I

    move-result v7

    .line 85
    .local v7, "progress":I
    int-to-long v2, v7

    invoke-virtual {p1, p2, p3, v2, v3}, Lcom/genie_connect/android/db/access/GameStore;->getColourForGame(JJ)I

    move-result v6

    .line 86
    .local v6, "colour":I
    invoke-virtual {p1, p2, p3}, Lcom/genie_connect/android/db/access/GameStore;->getMaxGamePoints(J)I

    move-result v0

    .line 89
    .local v0, "maxPoints":I
    int-to-long v2, v7

    int-to-long v4, v0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JJI)V

    .line 90
    return-void
.end method
