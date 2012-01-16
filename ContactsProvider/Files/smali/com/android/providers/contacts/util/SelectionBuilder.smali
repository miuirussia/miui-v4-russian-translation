.class public Lcom/android/providers/contacts/util/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# static fields
.field private static final rY:[Ljava/lang/String;


# instance fields
.field private final rZ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/util/SelectionBuilder;->rY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/util/SelectionBuilder;->rZ:Ljava/util/List;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 39
    return-void
.end method


# virtual methods
.method public V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/providers/contacts/util/SelectionBuilder;->rZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    return-object p0
.end method

.method public fn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/providers/contacts/util/SelectionBuilder;->rZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/util/SelectionBuilder;->rZ:Ljava/util/List;

    sget-object v1, Lcom/android/providers/contacts/util/SelectionBuilder;->rY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
