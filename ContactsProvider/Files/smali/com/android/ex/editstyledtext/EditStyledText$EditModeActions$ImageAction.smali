.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3129
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected D()Z
    .locals 2

    .prologue
    .line 3132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->h(I)Ljava/lang/Object;

    move-result-object v0

    .line 3133
    if-eqz v0, :cond_2

    .line 3134
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 3135
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Landroid/net/Uri;)V

    .line 3142
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3136
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3137
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->b(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->c(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    goto :goto_0

    .line 3140
    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->a(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->g(Lcom/android/ex/editstyledtext/EditStyledText;)V

    goto :goto_0
.end method
