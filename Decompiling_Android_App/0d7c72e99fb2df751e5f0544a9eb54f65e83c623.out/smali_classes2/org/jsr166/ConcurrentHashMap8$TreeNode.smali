.class final Lorg/jsr166/ConcurrentHashMap8$TreeNode;
.super Lorg/jsr166/ConcurrentHashMap8$Node;
.source "ConcurrentHashMap8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeNode"
.end annotation


# instance fields
.field left:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

.field parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

.field prev:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

.field red:Z

.field right:Lorg/jsr166/ConcurrentHashMap8$TreeNode;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "next"    # Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p5, "parent"    # Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .prologue
    .line 685
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 686
    iput-object p5, p0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->parent:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 687
    return-void
.end method
