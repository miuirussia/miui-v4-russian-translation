.class public Lcom/android/common/io/MoreCloseables;
.super Ljava/lang/Object;
.source "MoreCloseables.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_0
    return-void
.end method
