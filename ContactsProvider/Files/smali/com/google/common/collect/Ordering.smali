.class public abstract Lcom/google/common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eb()Lcom/google/common/collect/Ordering;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->qF:Lcom/google/common/collect/NaturalOrdering;

    return-object v0
.end method
