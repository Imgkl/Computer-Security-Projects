.class final Lorg/jsr166/ConcurrentHashMap8$TreeBin;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ConcurrentHashMap8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeBin"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field transient first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

.field transient root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private rotateLeft(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    .locals 4
    .param p1, "p"    # Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .prologue
    .line 768
    if-eqz p1, :cond_1

    .line 769
    iget-object v1, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 770
    .local v1, "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    iget-object v2, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    iput-object v2, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v2, "rl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v2, :cond_0

    .line 771
    iput-object p1, v2, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 772
    :cond_0
    iget-object v0, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v0, "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v0, :cond_2

    .line 773
    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 778
    :goto_0
    iput-object p1, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 779
    iput-object v1, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 781
    .end local v0    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v1    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v2    # "rl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_1
    return-void

    .line 774
    .restart local v0    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v1    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v2    # "rl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_2
    iget-object v3, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-ne v3, p1, :cond_3

    .line 775
    iput-object v1, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_0

    .line 777
    :cond_3
    iput-object v1, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_0
.end method

.method private rotateRight(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    .locals 4
    .param p1, "p"    # Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .prologue
    .line 785
    if-eqz p1, :cond_1

    .line 786
    iget-object v0, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 787
    .local v0, "l":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    iget-object v1, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    iput-object v1, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v1, "lr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v1, :cond_0

    .line 788
    iput-object p1, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 789
    :cond_0
    iget-object v2, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    iput-object v2, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v2, "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v2, :cond_2

    .line 790
    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 795
    :goto_0
    iput-object p1, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 796
    iput-object v0, p1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 798
    .end local v0    # "l":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v1    # "lr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v2    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_1
    return-void

    .line 791
    .restart local v0    # "l":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v1    # "lr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v2    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_2
    iget-object v3, v2, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-ne v3, p1, :cond_3

    .line 792
    iput-object v0, v2, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_0

    .line 794
    :cond_3
    iput-object v0, v2, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_0
.end method


# virtual methods
.method final deleteTreeNode(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    .locals 18
    .param p1, "p"    # Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .prologue
    .line 973
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    check-cast v3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 974
    .local v3, "next":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->prev:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 975
    .local v7, "pred":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v7, :cond_1

    .line 976
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 979
    :goto_0
    if-eqz v3, :cond_0

    .line 980
    iput-object v7, v3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->prev:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 982
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 983
    .local v4, "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 984
    .local v6, "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v4, :cond_c

    if-eqz v6, :cond_c

    .line 985
    move-object v9, v6

    .line 986
    .local v9, "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :goto_1
    iget-object v11, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v11, "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v11, :cond_2

    .line 987
    move-object v9, v11

    goto :goto_1

    .line 978
    .end local v4    # "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v6    # "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v9    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_1
    iput-object v3, v7, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 988
    .restart local v4    # "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v6    # "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v9    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_2
    iget-boolean v2, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .local v2, "c":Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    move/from16 v0, v17

    iput-boolean v0, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 989
    iget-object v13, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 990
    .local v13, "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 991
    .local v5, "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-ne v9, v6, :cond_7

    .line 992
    move-object/from16 v0, p1

    iput-object v9, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 993
    move-object/from16 v0, p1

    iput-object v0, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1006
    :cond_3
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1007
    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v13, :cond_4

    .line 1008
    move-object/from16 v0, p1

    iput-object v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1009
    :cond_4
    iput-object v4, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v4, :cond_5

    .line 1010
    iput-object v9, v4, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1011
    :cond_5
    iput-object v5, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-nez v5, :cond_a

    .line 1012
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1017
    :goto_3
    move-object v8, v13

    .line 1021
    .end local v2    # "c":Z
    .end local v5    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v9    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .local v8, "replacement":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :goto_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1022
    .restart local v5    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v8, :cond_12

    .line 1023
    if-nez v5, :cond_e

    .line 1024
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1132
    :cond_6
    :goto_5
    return-void

    .line 996
    .end local v8    # "replacement":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v2    # "c":Z
    .restart local v9    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_7
    iget-object v12, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 997
    .local v12, "sp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    move-object/from16 v0, p1

    iput-object v12, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v12, :cond_8

    .line 998
    iget-object v0, v12, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v9, v0, :cond_9

    .line 999
    move-object/from16 v0, p1

    iput-object v0, v12, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1003
    :cond_8
    :goto_6
    iput-object v6, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v6, :cond_3

    .line 1004
    iput-object v9, v6, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_2

    .line 1001
    :cond_9
    move-object/from16 v0, p1

    iput-object v0, v12, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_6

    .line 1013
    .end local v12    # "sp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_a
    iget-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1014
    iput-object v9, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_3

    .line 1016
    :cond_b
    iput-object v9, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_3

    .line 1020
    .end local v2    # "c":Z
    .end local v5    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v9    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_c
    if-eqz v4, :cond_d

    move-object v8, v4

    .restart local v8    # "replacement":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :goto_7
    goto :goto_4

    .end local v8    # "replacement":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_d
    move-object v8, v6

    goto :goto_7

    .line 1027
    .restart local v5    # "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v8    # "replacement":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_e
    move-object/from16 v8, p1

    .line 1039
    :goto_8
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 1040
    move-object v14, v8

    .line 1041
    .local v14, "x":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :goto_9
    if-eqz v14, :cond_10

    .line 1043
    iget-boolean v0, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_f

    iget-object v15, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v15, "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v15, :cond_15

    .line 1044
    .end local v15    # "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_f
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1125
    .end local v14    # "x":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_10
    move-object/from16 v0, p1

    if-ne v0, v8, :cond_6

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v5, :cond_6

    .line 1126
    iget-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_31

    .line 1127
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1130
    :cond_11
    :goto_a
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_5

    .line 1030
    :cond_12
    iput-object v5, v8, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1031
    if-nez v5, :cond_13

    .line 1032
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1037
    :goto_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_8

    .line 1033
    :cond_13
    iget-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 1034
    iput-object v8, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_b

    .line 1036
    :cond_14
    iput-object v8, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_b

    .line 1047
    .restart local v14    # "x":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v15    # "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_15
    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v16, v0

    .local v16, "xpl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    move-object/from16 v0, v16

    if-ne v14, v0, :cond_23

    .line 1048
    iget-object v10, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1049
    .local v10, "sib":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v10, :cond_16

    iget-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1050
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1051
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1052
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateLeft(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 1053
    iget-object v15, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-nez v15, :cond_17

    const/4 v10, 0x0

    .line 1055
    :cond_16
    :goto_c
    if-nez v10, :cond_18

    .line 1056
    move-object v14, v15

    goto/16 :goto_9

    .line 1053
    :cond_17
    iget-object v10, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_c

    .line 1058
    :cond_18
    iget-object v11, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .restart local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    iget-object v13, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1059
    .restart local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v13, :cond_19

    iget-boolean v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_1b

    :cond_19
    if-eqz v11, :cond_1a

    iget-boolean v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_1b

    .line 1061
    :cond_1a
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1062
    move-object v14, v15

    goto/16 :goto_9

    .line 1065
    :cond_1b
    if-eqz v13, :cond_1c

    iget-boolean v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_1e

    .line 1066
    :cond_1c
    if-eqz v11, :cond_1d

    .line 1067
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1068
    :cond_1d
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1069
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateRight(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 1070
    iget-object v15, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-nez v15, :cond_21

    const/4 v10, 0x0

    .line 1072
    :cond_1e
    :goto_d
    if-eqz v10, :cond_1f

    .line 1073
    if-nez v15, :cond_22

    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1074
    iget-object v13, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v13, :cond_1f

    .line 1075
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1077
    :cond_1f
    if-eqz v15, :cond_20

    .line 1078
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1079
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateLeft(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 1081
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto/16 :goto_9

    .line 1070
    :cond_21
    iget-object v10, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_d

    .line 1073
    :cond_22
    iget-boolean v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    goto :goto_e

    .line 1086
    .end local v10    # "sib":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_23
    move-object/from16 v10, v16

    .line 1087
    .restart local v10    # "sib":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v10, :cond_24

    iget-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-eqz v17, :cond_24

    .line 1088
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1089
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1090
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateRight(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 1091
    iget-object v15, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-nez v15, :cond_25

    const/4 v10, 0x0

    .line 1093
    :cond_24
    :goto_f
    if-nez v10, :cond_26

    .line 1094
    move-object v14, v15

    goto/16 :goto_9

    .line 1091
    :cond_25
    iget-object v10, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_f

    .line 1096
    :cond_26
    iget-object v11, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .restart local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    iget-object v13, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1097
    .restart local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v11, :cond_27

    iget-boolean v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_29

    :cond_27
    if-eqz v13, :cond_28

    iget-boolean v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_29

    .line 1099
    :cond_28
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1100
    move-object v14, v15

    goto/16 :goto_9

    .line 1103
    :cond_29
    if-eqz v11, :cond_2a

    iget-boolean v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    if-nez v17, :cond_2c

    .line 1104
    :cond_2a
    if-eqz v13, :cond_2b

    .line 1105
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1106
    :cond_2b
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1107
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateLeft(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 1108
    iget-object v15, v14, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-nez v15, :cond_2f

    const/4 v10, 0x0

    .line 1110
    :cond_2c
    :goto_10
    if-eqz v10, :cond_2d

    .line 1111
    if-nez v15, :cond_30

    const/16 v17, 0x0

    :goto_11
    move/from16 v0, v17

    iput-boolean v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1112
    iget-object v11, v10, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-eqz v11, :cond_2d

    .line 1113
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1115
    :cond_2d
    if-eqz v15, :cond_2e

    .line 1116
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 1117
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateRight(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 1119
    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto/16 :goto_9

    .line 1108
    :cond_2f
    iget-object v10, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_10

    .line 1111
    :cond_30
    iget-boolean v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    move/from16 v17, v0

    goto :goto_11

    .line 1128
    .end local v10    # "sib":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v11    # "sl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v13    # "sr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v14    # "x":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v15    # "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v16    # "xpl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_31
    iget-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 1129
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto/16 :goto_a
.end method

.method final getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .locals 11
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "p"    # Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .prologue
    .line 806
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 807
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p3, :cond_b

    .line 809
    iget v3, p3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->hash:I

    .local v3, "ph":I
    if-ne v3, p1, :cond_8

    .line 810
    iget-object v4, p3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->key:Ljava/lang/Object;

    .local v4, "pk":Ljava/lang/Object;
    if-eq v4, p2, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object v7, p3

    .line 831
    .end local v3    # "ph":I
    .end local v4    # "pk":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v7

    .line 812
    .restart local v3    # "ph":I
    .restart local v4    # "pk":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v2, :cond_3

    instance-of v9, p2, Ljava/lang/Comparable;

    if-eqz v9, :cond_3

    move-object v9, p2

    check-cast v9, Ljava/lang/Comparable;

    check-cast v4, Ljava/lang/Comparable;

    .end local v4    # "pk":Ljava/lang/Object;
    invoke-interface {v9, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .local v1, "dir":I
    if-nez v1, :cond_5

    .line 815
    .end local v1    # "dir":I
    :cond_3
    if-ne v0, v2, :cond_6

    const/4 v1, 0x0

    .line 816
    .restart local v1    # "dir":I
    :goto_2
    const/4 v7, 0x0

    .local v7, "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    const/4 v8, 0x0

    .line 817
    .local v8, "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-ltz v1, :cond_7

    .line 818
    iget-object v5, p3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v5, "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v5, :cond_4

    iget v9, v5, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->hash:I

    if-gt p1, v9, :cond_4

    .line 819
    move-object v8, v5

    .line 823
    .end local v5    # "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {p0, p1, p2, v8}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v7

    if-nez v7, :cond_1

    .line 829
    .end local v2    # "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v8    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_5
    :goto_4
    if-lez v1, :cond_a

    iget-object p3, p3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 830
    :goto_5
    goto :goto_0

    .line 815
    .end local v1    # "dir":I
    .restart local v2    # "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 821
    .restart local v1    # "dir":I
    .restart local v7    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v8    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_7
    iget-object v6, p3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v6, "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v6, :cond_4

    iget v9, v6, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->hash:I

    if-lt p1, v9, :cond_4

    .line 822
    move-object v8, v6

    goto :goto_3

    .line 828
    .end local v1    # "dir":I
    .end local v2    # "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v7    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v8    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_8
    if-ge p1, v3, :cond_9

    const/4 v1, -0x1

    .restart local v1    # "dir":I
    :goto_6
    goto :goto_4

    .end local v1    # "dir":I
    :cond_9
    const/4 v1, 0x1

    goto :goto_6

    .line 829
    .restart local v1    # "dir":I
    :cond_a
    iget-object p3, p3, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_5

    .line 831
    .end local v1    # "dir":I
    .end local v3    # "ph":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_1
.end method

.method final getValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 840
    const/4 v2, 0x0

    .line 841
    .local v2, "r":Lorg/jsr166/ConcurrentHashMap8$Node;
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getState()I

    move-result v0

    .line 842
    .local v0, "c":I
    iget-object v1, p0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v1, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 843
    if-gtz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    :try_start_0
    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 847
    invoke-virtual {p0, v5}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->releaseShared(I)Z

    .line 858
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 847
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v5}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->releaseShared(I)Z

    throw v3

    .line 851
    :cond_1
    iget v3, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    const v4, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v4

    if-ne v3, p1, :cond_2

    iget-object v3, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 852
    move-object v2, v1

    .line 853
    goto :goto_1

    .line 856
    :cond_2
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getState()I

    move-result v0

    .line 842
    iget-object v1, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 858
    :cond_3
    iget-object v3, v2, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    goto :goto_2
.end method

.method public final isHeldExclusively()Z
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getState()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .locals 24
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;

    .prologue
    .line 867
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 868
    .local v10, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v16, v0

    .local v16, "pp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    const/4 v9, 0x0

    .line 869
    .local v9, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    const/4 v11, 0x0

    .line 870
    .local v11, "dir":I
    :goto_0
    if-eqz v16, :cond_b

    .line 872
    move-object/from16 v9, v16

    .line 873
    iget v13, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->hash:I

    .local v13, "ph":I
    move/from16 v0, p1

    if-ne v13, v0, :cond_8

    .line 874
    iget-object v14, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->key:Ljava/lang/Object;

    .local v14, "pk":Ljava/lang/Object;
    move-object/from16 v0, p2

    if-eq v14, v0, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object/from16 v18, v9

    .line 961
    .end local v13    # "ph":I
    .end local v14    # "pk":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v18

    .line 876
    .restart local v13    # "ph":I
    .restart local v14    # "pk":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .local v12, "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v10, v12, :cond_3

    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/lang/Comparable;

    if-eqz v5, :cond_3

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Comparable;

    check-cast v14, Ljava/lang/Comparable;

    .end local v14    # "pk":Ljava/lang/Object;
    invoke-interface {v5, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-nez v11, :cond_5

    .line 879
    :cond_3
    if-ne v10, v12, :cond_6

    const/4 v11, 0x0

    .line 880
    :goto_2
    const/16 v18, 0x0

    .local v18, "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    const/16 v19, 0x0

    .line 881
    .local v19, "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-ltz v11, :cond_7

    .line 882
    iget-object v15, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v15, "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v15, :cond_4

    iget v5, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->hash:I

    move/from16 v0, p1

    if-gt v0, v5, :cond_4

    .line 883
    move-object/from16 v19, v15

    .line 887
    .end local v15    # "pl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_4
    :goto_3
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v18

    if-nez v18, :cond_1

    .line 893
    .end local v12    # "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v19    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_5
    :goto_4
    if-lez v11, :cond_a

    iget-object v0, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v16, v0

    .line 894
    :goto_5
    goto :goto_0

    .line 879
    .restart local v12    # "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    .line 885
    .restart local v18    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v19    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_7
    iget-object v0, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v17, v0

    .local v17, "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->hash:I

    move/from16 v0, p1

    if-lt v0, v5, :cond_4

    .line 886
    move-object/from16 v19, v17

    goto :goto_3

    .line 892
    .end local v12    # "pc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "pr":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v18    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v19    # "s":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_8
    move/from16 v0, p1

    if-ge v0, v13, :cond_9

    const/4 v11, -0x1

    :goto_6
    goto :goto_4

    :cond_9
    const/4 v11, 0x1

    goto :goto_6

    .line 893
    :cond_a
    iget-object v0, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v16, v0

    goto :goto_5

    .line 896
    .end local v13    # "ph":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 897
    .local v8, "f":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    new-instance v4, Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lorg/jsr166/ConcurrentHashMap8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 898
    .local v4, "x":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v9, :cond_d

    .line 899
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 961
    :cond_c
    :goto_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 902
    :cond_d
    if-eqz v8, :cond_e

    .line 903
    iput-object v4, v8, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->prev:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 904
    :cond_e
    if-gtz v11, :cond_10

    .line 905
    iput-object v4, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 908
    :goto_8
    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 909
    :cond_f
    :goto_9
    if-eqz v4, :cond_18

    iget-object v0, v4, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v20, v0

    .local v20, "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v20, :cond_18

    move-object/from16 v0, v20

    iget-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    if-eqz v5, :cond_18

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v21, v0

    .local v21, "xpp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v21, :cond_18

    .line 911
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v22, v0

    .line 912
    .local v22, "xppl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 913
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v23, v0

    .line 914
    .local v23, "y":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v23, :cond_11

    move-object/from16 v0, v23

    iget-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    if-eqz v5, :cond_11

    .line 915
    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 916
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 917
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 918
    move-object/from16 v4, v21

    goto :goto_9

    .line 907
    .end local v20    # "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v21    # "xpp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v22    # "xppl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v23    # "y":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_10
    iput-object v4, v9, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_8

    .line 921
    .restart local v20    # "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v21    # "xpp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v22    # "xppl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v23    # "y":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_11
    move-object/from16 v0, v20

    iget-object v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-ne v4, v5, :cond_12

    .line 922
    move-object/from16 v4, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateLeft(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 923
    iget-object v0, v4, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v20, v0

    if-nez v20, :cond_13

    const/16 v21, 0x0

    .line 925
    :cond_12
    :goto_a
    if-eqz v20, :cond_f

    .line 926
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 927
    if-eqz v21, :cond_f

    .line 928
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 929
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateRight(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    goto :goto_9

    .line 923
    :cond_13
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v21, v0

    goto :goto_a

    .line 935
    .end local v23    # "y":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_14
    move-object/from16 v23, v22

    .line 936
    .restart local v23    # "y":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v23, :cond_15

    move-object/from16 v0, v23

    iget-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    if-eqz v5, :cond_15

    .line 937
    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 938
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 939
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 940
    move-object/from16 v4, v21

    goto/16 :goto_9

    .line 943
    :cond_15
    move-object/from16 v0, v20

    iget-object v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    if-ne v4, v5, :cond_16

    .line 944
    move-object/from16 v4, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateRight(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    .line 945
    iget-object v0, v4, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v20, v0

    if-nez v20, :cond_17

    const/16 v21, 0x0

    .line 947
    :cond_16
    :goto_b
    if-eqz v20, :cond_f

    .line 948
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 949
    if-eqz v21, :cond_f

    .line 950
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->rotateLeft(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V

    goto/16 :goto_9

    .line 945
    :cond_17
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v21, v0

    goto :goto_b

    .line 957
    .end local v20    # "xp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v21    # "xpp":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v22    # "xppl":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v23    # "y":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v18, v0

    .line 958
    .restart local v18    # "r":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    if-eqz v5, :cond_c

    .line 959
    const/4 v5, 0x0

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->red:Z

    goto/16 :goto_7
.end method

.method public final tryAcquire(I)Z
    .locals 3
    .param p1, "ignore"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 741
    invoke-virtual {p0, v1, v0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 745
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final tryAcquireShared(I)I
    .locals 2
    .param p1, "ignore"    # I

    .prologue
    .line 754
    :cond_0
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getState()I

    move-result v0

    .local v0, "c":I
    if-lez v0, :cond_1

    .line 755
    const/4 v1, -0x1

    .line 757
    :goto_0
    return v1

    .line 756
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final tryRelease(I)Z
    .locals 1
    .param p1, "ignore"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->setState(I)V

    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public final tryReleaseShared(I)Z
    .locals 2
    .param p1, "ignore"    # I

    .prologue
    .line 762
    :cond_0
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getState()I

    move-result v0

    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
