.class public Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapter.java"


# instance fields
.field count:I

.field tb:Z

.field tc:Z

.field td:Landroid/database/Cursor;

.field te:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->tb:Z

    .line 42
    iput-boolean p2, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->tc:Z

    .line 43
    return-void
.end method
