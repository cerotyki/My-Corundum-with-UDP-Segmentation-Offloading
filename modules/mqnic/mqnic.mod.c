#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xbc0f22cc, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x402b8281, __VMLINUX_SYMBOL_STR(__request_module) },
	{ 0xcd65e4b1, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0x38bf8c60, __VMLINUX_SYMBOL_STR(ethtool_op_get_ts_info) },
	{ 0xac9657d8, __VMLINUX_SYMBOL_STR(ktime_get_with_offset) },
	{ 0xf9a482f9, __VMLINUX_SYMBOL_STR(msleep) },
	{ 0x1ed8b599, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_r8) },
	{ 0x1dabc4bb, __VMLINUX_SYMBOL_STR(skb_clone_tx_timestamp) },
	{ 0x508af06f, __VMLINUX_SYMBOL_STR(pci_free_irq_vectors) },
	{ 0x672edad8, __VMLINUX_SYMBOL_STR(pv_lock_ops) },
	{ 0xad995dac, __VMLINUX_SYMBOL_STR(netdev_stats_to_stats64) },
	{ 0x7aa1756e, __VMLINUX_SYMBOL_STR(kvfree) },
	{ 0x1e1d10ff, __VMLINUX_SYMBOL_STR(napi_disable) },
	{ 0xbefb641a, __VMLINUX_SYMBOL_STR(napi_consume_skb) },
	{ 0xeb815642, __VMLINUX_SYMBOL_STR(napi_schedule_prep) },
	{ 0x63d63a44, __VMLINUX_SYMBOL_STR(__napi_schedule_irqoff) },
	{ 0x257cbc87, __VMLINUX_SYMBOL_STR(i2c_smbus_read_i2c_block_data) },
	{ 0x7ae5ad74, __VMLINUX_SYMBOL_STR(sme_active) },
	{ 0x79aa04a2, __VMLINUX_SYMBOL_STR(get_random_bytes) },
	{ 0xd5aef55a, __VMLINUX_SYMBOL_STR(boot_cpu_data) },
	{ 0xc945fe7a, __VMLINUX_SYMBOL_STR(pci_disable_device) },
	{ 0xe63310e6, __VMLINUX_SYMBOL_STR(netif_carrier_on) },
	{ 0xa9e08275, __VMLINUX_SYMBOL_STR(_raw_spin_lock_bh) },
	{ 0xdf566a59, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_r9) },
	{ 0xd87044c7, __VMLINUX_SYMBOL_STR(netif_carrier_off) },
	{ 0x79a50d72, __VMLINUX_SYMBOL_STR(__dev_kfree_skb_any) },
	{ 0x2db80ead, __VMLINUX_SYMBOL_STR(pci_release_regions) },
	{ 0x778b8af3, __VMLINUX_SYMBOL_STR(mutex_unlock) },
	{ 0x4629334c, __VMLINUX_SYMBOL_STR(__preempt_count) },
	{ 0x7a2af7b4, __VMLINUX_SYMBOL_STR(cpu_number) },
	{ 0xdd64e639, __VMLINUX_SYMBOL_STR(strscpy) },
	{ 0x97651e6c, __VMLINUX_SYMBOL_STR(vmemmap_base) },
	{ 0x23f62134, __VMLINUX_SYMBOL_STR(__alloc_pages_nodemask) },
	{ 0x3775ffae, __VMLINUX_SYMBOL_STR(netif_napi_del) },
	{ 0x7fee2fa5, __VMLINUX_SYMBOL_STR(__pskb_pull_tail) },
	{ 0x2abab700, __VMLINUX_SYMBOL_STR(ptp_clock_unregister) },
	{ 0xb44ad4b3, __VMLINUX_SYMBOL_STR(_copy_to_user) },
	{ 0x773bea03, __VMLINUX_SYMBOL_STR(pci_set_master) },
	{ 0xe0ea72b3, __VMLINUX_SYMBOL_STR(netif_schedule_queue) },
	{ 0x21f0c5e2, __VMLINUX_SYMBOL_STR(misc_register) },
	{ 0x555bc1b8, __VMLINUX_SYMBOL_STR(pci_alloc_irq_vectors_affinity) },
	{ 0x7e526bfa, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_r10) },
	{ 0xfb578fc5, __VMLINUX_SYMBOL_STR(memset) },
	{ 0xf5daadf7, __VMLINUX_SYMBOL_STR(ns_to_timespec64) },
	{ 0x972bb3f0, __VMLINUX_SYMBOL_STR(netif_tx_wake_queue) },
	{ 0xd4f0008e, __VMLINUX_SYMBOL_STR(netif_tx_stop_all_queues) },
	{ 0x7e7cbf8e, __VMLINUX_SYMBOL_STR(pci_iounmap) },
	{ 0xa14acd5, __VMLINUX_SYMBOL_STR(dev_err) },
	{ 0x8a3b82f5, __VMLINUX_SYMBOL_STR(__mutex_init) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x3c3fce39, __VMLINUX_SYMBOL_STR(__local_bh_enable_ip) },
	{ 0x4c9d28b0, __VMLINUX_SYMBOL_STR(phys_base) },
	{ 0xea28a94a, __VMLINUX_SYMBOL_STR(free_netdev) },
	{ 0x35fda404, __VMLINUX_SYMBOL_STR(register_netdev) },
	{ 0xa23293e2, __VMLINUX_SYMBOL_STR(set_normalized_timespec64) },
	{ 0x5792f848, __VMLINUX_SYMBOL_STR(strlcpy) },
	{ 0x9c079d54, __VMLINUX_SYMBOL_STR(mutex_lock) },
	{ 0x40eec631, __VMLINUX_SYMBOL_STR(device_attach) },
	{ 0x692d940c, __VMLINUX_SYMBOL_STR(netif_set_real_num_rx_queues) },
	{ 0x2edce44c, __VMLINUX_SYMBOL_STR(netif_set_real_num_tx_queues) },
	{ 0x9c70989, __VMLINUX_SYMBOL_STR(netif_napi_add) },
	{ 0xffef8c12, __VMLINUX_SYMBOL_STR(ptp_clock_register) },
	{ 0x81081a97, __VMLINUX_SYMBOL_STR(i2c_unregister_device) },
	{ 0xf3582ed2, __VMLINUX_SYMBOL_STR(pci_request_irq) },
	{ 0x90786dc4, __VMLINUX_SYMBOL_STR(pci_clear_master) },
	{ 0x4c03fc5, __VMLINUX_SYMBOL_STR(arch_dma_alloc_attrs) },
	{ 0xc5bc25de, __VMLINUX_SYMBOL_STR(kvmalloc_node) },
	{ 0x7cd8d75e, __VMLINUX_SYMBOL_STR(page_offset_base) },
	{ 0x167c5967, __VMLINUX_SYMBOL_STR(print_hex_dump) },
	{ 0x357b6a, __VMLINUX_SYMBOL_STR(i2c_del_adapter) },
	{ 0x30c9a0ab, __VMLINUX_SYMBOL_STR(netif_device_attach) },
	{ 0x2d5f1bfb, __VMLINUX_SYMBOL_STR(_dev_info) },
	{ 0x8ff4079b, __VMLINUX_SYMBOL_STR(pv_irq_ops) },
	{ 0x40a0fe83, __VMLINUX_SYMBOL_STR(__free_pages) },
	{ 0x2f64f7cc, __VMLINUX_SYMBOL_STR(pci_disable_link_state) },
	{ 0x618911fc, __VMLINUX_SYMBOL_STR(numa_node) },
	{ 0x5944d015, __VMLINUX_SYMBOL_STR(__cachemode2pte_tbl) },
	{ 0x3f2bbe5f, __VMLINUX_SYMBOL_STR(pci_free_irq) },
	{ 0xe201c4e4, __VMLINUX_SYMBOL_STR(_raw_spin_unlock_bh) },
	{ 0xdb7305a1, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x57119f91, __VMLINUX_SYMBOL_STR(skb_checksum_help) },
	{ 0x62d23a26, __VMLINUX_SYMBOL_STR(napi_complete_done) },
	{ 0x2ea2c95c, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_rax) },
	{ 0xbfdcb43a, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_r11) },
	{ 0x7f24de73, __VMLINUX_SYMBOL_STR(jiffies_to_usecs) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
	{ 0x6551d005, __VMLINUX_SYMBOL_STR(pci_unregister_driver) },
	{ 0xe50cf061, __VMLINUX_SYMBOL_STR(kmem_cache_alloc_trace) },
	{ 0x56321ae2, __VMLINUX_SYMBOL_STR(_raw_spin_lock) },
	{ 0x53db1182, __VMLINUX_SYMBOL_STR(pci_ioremap_bar) },
	{ 0xe363d78a, __VMLINUX_SYMBOL_STR(__dynamic_dev_dbg) },
	{ 0x20b700fa, __VMLINUX_SYMBOL_STR(pci_irq_vector) },
	{ 0xc36f2978, __VMLINUX_SYMBOL_STR(eth_validate_addr) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x1e15b7eb, __VMLINUX_SYMBOL_STR(remap_pfn_range) },
	{ 0x58f2ed33, __VMLINUX_SYMBOL_STR(pci_request_regions) },
	{ 0x708dce62, __VMLINUX_SYMBOL_STR(ptp_clock_index) },
	{ 0x19b0a052, __VMLINUX_SYMBOL_STR(__pci_register_driver) },
	{ 0x2aeb9705, __VMLINUX_SYMBOL_STR(dev_warn) },
	{ 0x6220523, __VMLINUX_SYMBOL_STR(napi_get_frags) },
	{ 0x466430f0, __VMLINUX_SYMBOL_STR(unregister_netdev) },
	{ 0xa46a4ad1, __VMLINUX_SYMBOL_STR(i2c_bit_add_bus) },
	{ 0x28318305, __VMLINUX_SYMBOL_STR(snprintf) },
	{ 0xb48e4a36, __VMLINUX_SYMBOL_STR(pci_enable_device_mem) },
	{ 0x436c2179, __VMLINUX_SYMBOL_STR(iowrite32) },
	{ 0x4118fb86, __VMLINUX_SYMBOL_STR(skb_tstamp_tx) },
	{ 0x33e17d4f, __VMLINUX_SYMBOL_STR(devm_kmalloc) },
	{ 0x362ef408, __VMLINUX_SYMBOL_STR(_copy_from_user) },
	{ 0xb076cc23, __VMLINUX_SYMBOL_STR(i2c_new_device) },
	{ 0xe1cfed2, __VMLINUX_SYMBOL_STR(misc_deregister) },
	{ 0xf402012c, __VMLINUX_SYMBOL_STR(dma_ops) },
	{ 0xa149f7a2, __VMLINUX_SYMBOL_STR(napi_gro_frags) },
	{ 0xe484e35f, __VMLINUX_SYMBOL_STR(ioread32) },
	{ 0xa78265df, __VMLINUX_SYMBOL_STR(pci_save_state) },
	{ 0x389f5ed6, __VMLINUX_SYMBOL_STR(alloc_etherdev_mqs) },
	{ 0x17fbce60, __VMLINUX_SYMBOL_STR(sme_me_mask) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=ptp,i2c-algo-bit";

MODULE_ALIAS("pci:v00001234d00001001sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v00005543d00001001sv*sd*bc*sc*i*");

MODULE_INFO(srcversion, "DB1E10E8E5231BAFEABD731");
