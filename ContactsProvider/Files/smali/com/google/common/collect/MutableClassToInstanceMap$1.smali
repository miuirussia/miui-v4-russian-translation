.class final Lcom/google/common/collect/MutableClassToInstanceMap$1;
.super Ljava/lang/Object;
.source "MutableClassToInstanceMap.java"

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap$1;->c(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
