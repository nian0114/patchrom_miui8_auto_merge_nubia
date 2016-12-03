.class Lcom/android/phone/NBCallTimersScreen$1;
.super Ljava/lang/Object;
.source "NBCallTimersScreen.java"

# interfaces
.implements Lcom/android/phone/NBSimStateChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCallTimersScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallTimersScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallTimersScreen;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallTimersScreen$1;->this$0:Lcom/android/phone/NBCallTimersScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChange()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen$1;->this$0:Lcom/android/phone/NBCallTimersScreen;

    invoke-virtual {v0}, Lcom/android/phone/NBCallTimersScreen;->finish()V

    return-void
.end method
