FROM registry.hundsun.com/library/busybox:1.29.2
COPY cpu_alloc /cpu_alloc
RUN chmod +x /cpu_alloc
CMD ["cpu_alloc", "-n", "2", "-d", "3600"]
