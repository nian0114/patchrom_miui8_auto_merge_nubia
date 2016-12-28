.class Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaGlobalActions$GlobalActionsDialog;->dismiss()V

    return-void
.end method
