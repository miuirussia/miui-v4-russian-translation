.class Lcom/google/common/base/Predicates$InstanceOfPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/common/base/Predicates$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/google/common/base/Platform;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 391
    instance-of v1, p1, Lcom/google/common/base/Predicates$InstanceOfPredicate;

    if-eqz v1, :cond_0

    .line 392
    check-cast p1, Lcom/google/common/base/Predicates$InstanceOfPredicate;

    .line 393
    iget-object v1, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 395
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsInstanceOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
